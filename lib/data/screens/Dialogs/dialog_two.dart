import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:form_validator/form_validator.dart';
import 'package:grpc/grpc.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/Dialogs/dialog_three.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/components.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';
import 'package:refierelo_marketplace/providers/referente_provider.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import '../Register/components/components.dart';
import '../Register/components/custom_input.dart';

class DialogTwo extends StatefulWidget {
  final String idSubproducto;
  const DialogTwo({required this.idSubproducto, super.key});

  @override
  State<DialogTwo> createState() => _DialogTwoState();
}

class _DialogTwoState extends State<DialogTwo> {
  final _formKey = GlobalKey<FormState>();

  var nombreApellido = TextEditingController();
  var numeroTelefono = TextEditingController();
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context, size),
    );
  }

  contentBox(BuildContext context, Size size) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
      Container(
      // height: size.height * 0.30,
      width: size.width*0.95,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Color(0xff003366), Color(0xff02B5E7)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
          borderRadius: BorderRadius.circular(18)),
      child: Stack(
        // alignment: Alignment.center,
        children: [
          Positioned(
              top: 0,
              right: 0,
              child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Image.asset(
                    'assets/images/pop_referir/close.png',
                    // height: size.height * 0.9,
                    width: size.width * 0.08,
                    fit: BoxFit.fitHeight,
                  )),
            ),
          Form(
              key: _formKey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: size.height * 0.03),
                      RichText(
                        text: const TextSpan(
                            text: 'Ingresa el ',
                            style: TextStyle(color: Colors.white),
                            children: [
                              TextSpan(
                                  text: 'nombre y apellido ',
                                  style: TextStyle(color: Color(0xff00DFEE))),
                              TextSpan(
                                  text: 'de tu referido',
                                  style: TextStyle(color: Colors.white))
                            ]),
                      ),
                      SizedBox(height: size.height * 0.01),
                      // Container(
                      //   width: size.width * 0.9,
                      //   padding: EdgeInsets.only(left: 15),
                      //   decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(12),
                      //       color: Colors.white),
                      //   child: TextFormField(
                      //       controller: nombreApellido,
                      //       validator: ValidationBuilder().required().build(),
                      //       autovalidateMode: AutovalidateMode.onUserInteraction,
                      //       decoration:
                      //           InputDecoration(border: InputBorder.none)),
                      // ),
                      SizedBox(width: size.width*0.92, 
                      child: CustomInput(
                        placeholder: '', 
                        title: const CustomFontAileronRegular(text: ''), 
                        controller: nombreApellido, rounded: false, colorTitle: Colors.white, alignTitle: Alignment.center, validator: ValidationBuilder().required().build(), showTitle: false,),),
                      SizedBox(height: size.height * 0.01),
                      RichText(
                        text: const TextSpan(
                            text: 'Ingresa el ',
                            style: TextStyle(color: Colors.white),
                            children: [
                              TextSpan(
                                  text: 'número de celular  ',
                                  style: TextStyle(color: Color(0xff00DFEE))),
                              TextSpan(
                                  text: 'de tu referido',
                                  style: TextStyle(color: Colors.white))
                            ]),
                      ),
                      SizedBox(height: size.height * 0.01),
                      SizedBox(width: size.width*0.92, 
                      child: CustomInput(
                        placeholder: '', 
                        title: const CustomFontAileronRegular(text: ''),
                        controller: numeroTelefono, rounded: false, colorTitle: Colors.white, alignTitle: Alignment.center, validator: ValidationBuilder().required().build(), showTitle: false, tipo: TextInputType.number,),),
                      SizedBox(height: size.height * 0.01),
                      GestureDetector(
                        onTap: () async {
                          if (!_formKey.currentState!.validate()) {
                            return;
                          }
                          setState(() {
                            loading = true;
                          });

                          try {
                            var channel = getChannel();
                            var response = await ServiceClient(channel).saveRefSubproducto(
                                saveRefSubproductoRequest(
                                    sessionString: await SessionManager()
                                        .get('sessionString'),
                                    idSubproducto: widget.idSubproducto,
                                    nombreApellido: nombreApellido.text,
                                    numeroTelefono: numeroTelefono.text));
                            channel.shutdown();
                            // context.read<ReferenteProvider>().actualizarPuntos(int.tryParse(response.puntos.toString())??0);
                            context.read<ReferenteProvider>().referenteGlobal?.puntosEnProceso += (int.tryParse(response.puntos)??0);
                            // if ((int.tryParse(response.puntos)??0)>0) {
                            //   toast('Ganaste ${response.puntos} puntos.', Colors.green);
                            // }
                            Navigator.pop(context);
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return const DialogThree();
                                });
                          } on GrpcError {
                            // toast(e.message ?? 'Hubo un error', Colors.red);
                            toast('La acción referir de este producto aún está en construcción.', Colors.purple);
                          } on Exception {
                            // toast('Hubo un error', Colors.red);
                            toast('La acción referir de este producto aún está en construcción.', Colors.purple);
                          } finally{
                            setState(() {
                            loading = false;
                          });
                          }
                        },
                        child: Container(
                            // width: size.width * 0.4,
                            // height: size.height * 0.05,
                            width: size.width * 0.3,
                            height: size.height * 0.04,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [
                                      Color(0xffF8E43E),
                                      Color(0xffCE8F21)
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight),
                                borderRadius: BorderRadius.circular(29)),
                            child: Center(
                              child: Text(
                                loading ? 'Enviando...' : 'Enviar',
                                style: const TextStyle(color: Colors.white),
                              ),
                            )),
                      ),
                      SizedBox(height: size.height * 0.03),
                    ],
                  )
                ],
              ))
        ],
      ),
    )
    ],);
  }
}
