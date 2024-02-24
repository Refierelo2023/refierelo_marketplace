import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:grpc/grpc_or_grpcweb.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/Dialogs/bottom_dialog.dart';
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
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 4, top: 7, bottom: 20, left: 4),
                  child: Stack(
                    children: [
                      Container(
                          width: size.width * 0.9,
                          height: size.height * 0.48,
                          margin: EdgeInsets.symmetric(
                              horizontal: size.width * 0.02),
                          decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              gradient: const LinearGradient(colors: [
                                Color(0xff02B5E7),
                                Color(0xff003366)
                              ])),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Positioned(
                                top: 20,
                                right: 0,
                                child: Image.asset(
                                  'assets/images/pop_welcome/coin2.png',
                                  // height: size.height * 0.25,
                                  width: size.width * 0.58,
                                ),
                              ),
                              SizedBox(height: size.height * 0.03),
                              Positioned(
                                  top: size.height * 0.25,
                                  right: size.width * 0.01,
                                  child: SizedBox(
                                    width: size.width * 0.5,
                                    child: const Wrap(
                                      alignment: WrapAlignment.center,
                                      children: [
                                        Text(
                                          'Ingresa el',
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(' número de celular ',
                                            style: TextStyle(
                                                color: Color(0xff00DFEE)),
                                            textAlign: TextAlign.center),
                                        Text('de quien te compartio la app.',
                                            style:
                                                TextStyle(color: Colors.white),
                                            textAlign: TextAlign.center),
                                      ],
                                    ),
                                  )),
                              Positioned(
                                top: size.height * 0.31,
                                right: size.width * 0.03,
                                child: Container(
                                  width: size.width * 0.47,
                                  height: size.height *0.054, // O ajusta el ancho según tus necesidades
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                        vertical: MediaQuery.of(context).size.width *0.015,
                                        horizontal: MediaQuery.of(context).size.width *0.01,
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0xFF03F9FF),
                                          width: 2,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(11.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(11.0),
                                      ),
                                    ),
                                    controller: msisdnRecomendado,
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: size.height * 0.38,
                                right: size.width * 0.13,
                                child: BottomDialog(
                                  onPressed: () async {
                                    try {
                                      if (msisdnRecomendado.text == '') {
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
                                      onLoading(context,
                                          texto: 'Validando número..');
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
                                                          .get(
                                                              'sessionString')),
                                                  msisdnRecomendado:
                                                      msisdnRecomendado.text,
                                                  date: DateFormat('yyyy-MM-dd')
                                                      .format(DateTime.now())))
                                          .whenComplete(() {
                                        channel.shutdown();
                                        if (mounted) { 
                                          Navigator.of(context).pop();
                                        }
                                      });

                                      context
                                          .read<ReferenteProvider>()
                                          .actualizarPuntos(int.tryParse(
                                                  response.puntos.toString()) ??
                                              0);
                                      if (mounted) {
                                        var referente = context
                                            .read<ReferenteProvider>()
                                            .referenteGlobal;
                                        referente!.msisdnRecomendado =
                                            msisdnRecomendado.text;
                                        context
                                            .read<ReferenteProvider>()
                                            .set(referente);
                                        Navigator.of(context)
                                            .pop(response.puntos.toString());
                                      }
                                    } on GrpcError catch (e) {
                                      if (e.code == 3) {
                                        Fluttertoast.showToast(
                                            msg:
                                                "No puedes usar tu mismo número.",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.BOTTOM,
                                            timeInSecForIosWeb: 1,
                                            backgroundColor: Colors.red,
                                            textColor: Colors.white,
                                            fontSize: 16.0);
                                      } else {
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
                                  title: "Guardar",
                                ),
                              ),
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
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 1,
                left: 1,
                child: Image.asset(
                  'assets/images/pop_welcome/personaje.png',
                  height: size.height * 0.44,
                ),
              ),
              Positioned(
                top: -0,
                right: 2,
                child: ClipOval(
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.close_rounded,
                        size: 20,
                        color: Color(0xff003366),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
