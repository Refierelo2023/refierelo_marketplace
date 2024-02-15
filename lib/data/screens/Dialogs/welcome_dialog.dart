import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:grpc/grpc_or_grpcweb.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/Dialogs/error_register_dialog.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/components.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';
import 'package:refierelo_marketplace/providers/referente_provider.dart';
import '../Register/components/components.dart';

class WelcomeDialog extends StatefulWidget {
  const WelcomeDialog({super.key});

  @override
  State<WelcomeDialog> createState() => _WelcomeDialogState();
}

class _WelcomeDialogState extends State<WelcomeDialog>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation<double>? scaleAnimation;
  TextEditingController msisdnRecomendado = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    scaleAnimation =
        CurvedAnimation(parent: controller!, curve: Curves.elasticInOut);

    controller?.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });

    controller?.forward();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation!,
          child: Container(
              width: size.width*0.9,
              height: size.height * 0.46,
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  gradient: const LinearGradient(
                      colors: [Color(0xff02B5E7), Color(0xff003366)])),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Positioned(
                    left: 0,
                    child: Image.asset(
                      'assets/images/validacion_bienvenida/personaje.png',
                      height: size.height * 0.4,
                    ),
                  ),
                  Positioned(
                    top: 4,
                    right: 20,
                    child: Image.asset(
                      'assets/images/validacion_bienvenida/2.png',
                      // height: size.height * 0.25,
                      width: size.width * 0.53,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Positioned(
                    top: size.height * 0.20,
                    right: size.width * 0.05,
                    child: SizedBox(
                      width: size.width*0.5,
                      child: const Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                             Text('Ingresa el', style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                      Text(' número de celular ', style: TextStyle(color: Color(0xff00DFEE)), textAlign: TextAlign.center),
                      Text('de la persona que te compartio la app.', style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
                      ],),)
                  ),
                  Positioned(
                      top: size.height * 0.28,
                      right: size.width * 0.05,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                        width: size.width * 0.5,
                        child: TextField(
                          textAlign: TextAlign.center,
                          showCursor: true,
                          decoration: const InputDecoration(border: InputBorder.none),
                          controller: msisdnRecomendado,
                          keyboardType: TextInputType.number,
                        ),
                      )),
                  Positioned(
                      top: size.height * 0.36,
                      right: size.width * 0.14,
                      child: Container(
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color(0xff0096C2),
                                Color(0xff00DFEE)
                              ]),
                              borderRadius: BorderRadius.circular(16)),
                          width: size.width * 0.3,
                          height: size.height * 0.04,
                          child: TextButton(
                              onPressed: () async {

                                try {
                                  if (msisdnRecomendado.text=='') {
                                    Fluttertoast.showToast(
                                      msg: 'Ingrese el número de celular',
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.red,
                                      textColor: Colors.white,
                                      fontSize: 16.0);
                                      return;
                                  }
                                  onLoading(context, texto: 'Validando número.');
                                  var channel = getChannel();
                                  var response = await ServiceClient(
                                          getChannel())
                                      .refAppRecomendado(
                                          refAppRecomendadoRequest(
                                              idreferente: context
                                                  .read<ReferenteProvider>()
                                                  .referenteGlobal
                                                  ?.idreferente
                                                  .toString(),
                                              sessionString:
                                                  (await SessionManager()
                                                      .get('sessionString')),
                                              msisdnRecomendado: msisdnRecomendado.text,
                                              date: DateFormat('yyyy-MM-dd').format(DateTime.now())))
                                      .whenComplete(() {
                                        channel.shutdown();
                                        if (mounted) {
                                          Navigator.of(context).pop();
                                        }
                                      });

                                      context.read<ReferenteProvider>().actualizarPuntos(int.tryParse(response.puntos.toString())??0);
                                      if (mounted) {
                                        var referente = context.read<ReferenteProvider>().referenteGlobal;
                                        referente!.msisdnRecomendado = msisdnRecomendado.text;
                                        context.read<ReferenteProvider>().set(referente);
                                        Navigator.of(context).pop(response.puntos.toString());
                                      }
                                  
                                } on GrpcError catch (e) {
                                  if (e.code == 3) {
                                    Fluttertoast.showToast(
                                      msg: "No puedes usar tu mismo número.",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.red,
                                      textColor: Colors.white,
                                      fontSize: 16.0);
                                  }else{
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return const ErrorRegisterDialog();
                                      });
                                  }
                                } on Exception {
                                  Fluttertoast.showToast(
                                      msg: "Hubo un error",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.red,
                                      textColor: Colors.white,
                                      fontSize: 16.0);
                                }
                              },
                              child: const Text(
                                'Registrar',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )))),
                  Positioned(
                      bottom: 15,
                      right: 24,
                      child: GestureDetector(
                        onTap: (() => Navigator.pop(context)),
                        child: const Text(
                          'Omitir',
                          style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline),
                        ),
                      )),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: GestureDetector(
                      onTap: (() => Navigator.pop(context)),
                      child: Image.asset(
                        'assets/images/validacion_bienvenida/close.png',
                        height: size.height * 0.04,
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
