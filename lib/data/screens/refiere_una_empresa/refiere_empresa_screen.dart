import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:form_validator/form_validator.dart';
import 'package:grpc/grpc.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/Dialogs/dialog_three.dart';
import 'package:refierelo_marketplace/data/screens/Register/components/custom_input.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/components.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/error_alert.dart';
import 'package:refierelo_marketplace/data/screens/main.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_screens_setup_account.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';
import 'package:refierelo_marketplace/providers/referente_provider.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import '../Register/components/components.dart';

class RefiereEmpresaScreen extends StatefulWidget {
  const RefiereEmpresaScreen({super.key});

  @override
  State<RefiereEmpresaScreen> createState() => _RefiereEmpresaScreenState();
}

class _RefiereEmpresaScreenState extends State<RefiereEmpresaScreen> {
  TextEditingController nombreEmpresa = TextEditingController();
  var focusNode = FocusNode();
  TextEditingController identificacionEmpresa = TextEditingController();
  TextEditingController nombreContacto = TextEditingController();
  TextEditingController telefonoEmpresa = TextEditingController();

  var formKey = GlobalKey<FormState>();

  // String? videoId = YoutubePlayer.convertUrlToId("https://youtu.be/4kGRsJ8TEBw");
  bool checked = false;
  Widget _buildButton(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width * 0.25;
    double buttonPaddingHorizontalPercentage = 0.020;

    return GestureDetector(
      onTap: () async {
        if (!checked) {
          toast('Debes aceptar las condiciones para continuar', Colors.red);
          return;
        }
        if (!formKey.currentState!.validate()) {
          return;
        }

        onLoading(navigatorKey.currentContext!, texto: 'Registrando empresa.');

        try {
          var channel = getChannel();
          var response = await ServiceClient(channel).saveRefEmpresa(
              saveRefEmpresaRequest(
                  sessionString: await SessionManager().get('sessionString'),
                  estadoRefEmpresa: '0',
                  identificacionEmpresa: identificacionEmpresa.text,
                  nombreContacto: nombreContacto.text,
                  nombreEmpresa: nombreEmpresa.text,
                  telefonoEmpresa: telefonoEmpresa.text));
          channel.shutdown();
          // context.read<ReferenteProvider>().actualizarPuntos(int.tryParse(response.puntos.toString())??0);
          context.read<ReferenteProvider>().referenteGlobal?.puntosEnProceso +=
              (int.tryParse(response.puntosGanados.toString()) ?? 0);

          Navigator.of(navigatorKey.currentContext!).pop();

          identificacionEmpresa.clear();
          nombreContacto.clear();
          nombreEmpresa.clear();
          telefonoEmpresa.clear();

          showDialog(
              context: context,
              builder: (context) {
                return const DialogThree();
              }).then((value) {
            FocusScope.of(context).requestFocus(focusNode);
          });
          // if ((int.tryParse(response.puntos)??0)>0) {
          //   toast('Ganaste ${response.puntos} puntos.', Colors.green);
          // }
          // Navigator.pop(context);
          // showDialog(
          //     context: context,
          //     builder: (context) {
          //       return const DialogThree();
          //     });
        } on GrpcError catch (e) {
          Navigator.of(context).pop();
          // toast(e.message ?? 'Hubo un error', Colors.red);
          showDialog(
              context: context,
              builder: (context) {
                return ErrorAlert(
                  mensaje: e.message ??
                      'Tu referido no quedó registrado, intentalo nuevamente.',
                );
              });
        } on Exception {
          Navigator.of(context).pop();
          // toast('Hubo un error', Colors.red);
          showDialog(
              context: context,
              builder: (context) {
                return const ErrorAlert(
                  mensaje:
                      'Tu referido no quedó registrado, intentalo nuevamente.',
                );
              });
        }
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: FractionallySizedBox(
          widthFactor: 0.6,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width,
            ),
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.width *
                  buttonPaddingHorizontalPercentage,
              horizontal: MediaQuery.of(context).size.width *
                  buttonPaddingHorizontalPercentage,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color(0xFFCE8F21),
                  Color(0xFFF8E43E),
                ],
              ),
            ),
            child: SizedBox(
              width: buttonWidth,
              child: const Text(
                'Enviar',
                style: TextStyle(
                  fontFamily: 'Aileron',
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color(0xFF02b5e7),
              Color(0xFF02b5e7),
              Color(0xFF003366),
              Color(0xFF003366),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: SafeArea(
            child: SingleChildScrollView(
                child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: size.height * 0.01),
                  Center(
                    child: Image.asset(
                      'assets/images/images_display_refiere_aqui/validacion.png',
                      height: size.height * 0.1,
                      width: size.width * 1,
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: '¡ Más puntos para tu cuenta ! \n',
                        style: const CustomFontAileronSemiBoldTur(text: " ")
                            .getTextStyle(context)
                            .copyWith(height: 1.5),
                        children: [
                          TextSpan(
                              text: 'comparte tu experiencia con \n',
                              style: const CustomFontAileronSemiBoldWhite(
                                      text: " ")
                                  .getTextStyle(context)
                                  .copyWith(height: 1.5)),
                          TextSpan(
                              text: 'otras marcas ',
                              style: const CustomFontAileronSemiBoldWhite(
                                      text: " ")
                                  .getTextStyle(context)
                                  .copyWith(height: 1.5)),
                          TextSpan(
                              text: 'Refierelas y Gana  ',
                              style:
                                  const CustomFontAileronSemiBoldTur(text: " ")
                                      .getTextStyle(context)
                                      .copyWith(height: 1.5)),
                          TextSpan(
                              text: '',
                              style: const CustomFontAileronSemiBoldWhite(
                                      text: " ")
                                  .getTextStyle(context)
                                  .copyWith(height: 1.5)),
                        ]),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  // const Center(
                  //   child: Text(
                  //     '¿Por qué referir a una empresa?',
                  //     style: TextStyle(color: Colors.white, fontSize: 16),
                  //   ),
                  // ),
                  // // Container(
                  // //   margin: EdgeInsets.symmetric(horizontal: size.width * 0.08),
                  // //   child: YoutubeComponent(
                  // //     videoId: videoId!,
                  // //   ),
                  // // ),
                  CustomInput(
                    colorTitle: Colors.white,
                    title: const CustomFontAileronRegularWhite(
                        text: 'Nombre de la empresa o emprendimiento'),
                    controller: nombreEmpresa,
                    validator: ValidationBuilder().required().build(),
                    focusNode: focusNode,
                    placeholder: '',
                  ),
                  SizedBox(height: size.height * 0.02),
                  CustomInput(
                    colorTitle: Colors.white,
                    title: const CustomFontAileronRegularWhite(
                        text: 'Identificación (Opcional)'),
                    controller: identificacionEmpresa,
                    validator: ValidationBuilder().required().build(),
                    placeholder: '',
                  ),
                  SizedBox(height: size.height * 0.02),
                  CustomInput(
                      colorTitle: Colors.white,
                      title: const CustomFontAileronRegularWhite(
                          text: 'Nombre completo de persona de contacto'),
                      controller: nombreContacto,
                      validator: ValidationBuilder().required().build()),
                  SizedBox(height: size.height * 0.02),
                  CustomInput(
                      colorTitle: Colors.white,
                      title: const CustomFontAileronRegularWhite(
                          text: 'Número de teléfono'),
                      controller: telefonoEmpresa,
                      validator: ValidationBuilder().required().build()),
                  SizedBox(height: size.height * 0.02),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: size.width * 0.08,
                          height: size.height * 0.01,
                          child: Checkbox(
                              value: checked,
                              onChanged: (value) {
                                setState(() {
                                  checked = !checked;
                                });
                              }),
                        ),
                        const Expanded(
                          child: CustomFontAileronRegularWhite(
                            text:
                                'Estoy autorizado por mi referido para el tratamiento de datos',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    child: const Column(
                      children: [
                        CustomFontAileronRegularWhite(
                          text:
                              'Recibiras tus puntos una vez nuestros ejecutivos contacten a la empresa y/o emprendimiento y confirmen que fueron referidos por ti',
                          textAlign: TextAlign.justify,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.04),
                  _buildButton(context),
                  SizedBox(height: size.height * 0.1),
                ],
              ),
            )),
          ),
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 35,
        backgroundColor: const Color(0xff003366),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          color: const Color(0xFFFFFFFF),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      const LoginScreensSetupAccount()), // Ir a LoginScreens
            );
          },
        ),
      ),
    );
  }
}
