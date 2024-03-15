import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:form_validator/form_validator.dart';
import 'package:grpc/grpc.dart';
import 'package:refierelo_marketplace/app/helper/helpers/helpers.dart';
import 'package:refierelo_marketplace/data/screens/Register/components/components.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/components.dart';
import 'package:refierelo_marketplace/data/screens/main_screen.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Register/components/custom_input.dart';

class NuevaClaveScreen extends StatefulWidget {
  final String msisdn;
  final String otp;
  const NuevaClaveScreen({required this.msisdn, required this.otp, super.key});

  @override
  State<NuevaClaveScreen> createState() => _NuevaClaveScreenState();
}

class _NuevaClaveScreenState extends State<NuevaClaveScreen> {
  var msisdn = TextEditingController();
  var nuevaClave = TextEditingController();
  var nuevaClaveConfirm = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    ValidationBuilder.setLocale('es');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/option_login_screens/fondo.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: size.height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: size.height * 0.22),
                        Image.asset(
                          'assets/images/otp/superreferente.png',
                          width: size.width * 0.52,
                        ),
                        SizedBox(
                          width: size.width * 0.70,
                          child: const Text(
                            '¡Validación exitosa!',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        SizedBox(height: size.height * 0.02),
                        const Expanded(
                          child: SizedBox(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    CustomInput(
                      placeholder: 'Nueva clave (4 dígitos)',
                      controller: nuevaClave,
                      rounded: false,
                      colorTitle: Colors.white,
                      alignTitle: Alignment.center,
                      validator: ValidationBuilder().required().build(),
                      ocultarTexto: true,
                    ),
                    SizedBox(height: size.height * 0.01),
                    CustomInput(
                      placeholder: 'Confirmala',
                      controller: nuevaClaveConfirm,
                      rounded: false,
                      colorTitle: Colors.white,
                      alignTitle: Alignment.center,
                      validator: ValidationBuilder().required().build(),
                      ocultarTexto: true,
                    ),
                    SizedBox(height: size.height * 0.02),
                    Container(
                      height: size.height * 0.05,
                      width: size.width * 0.4,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xffCE8F21), Color(0xffF8E43E)],
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ElevatedButton(
                        onPressed: () async {
                          if (!_formKey.currentState!.validate()) {
                            return;
                          }

                          var sessionString = generateSessionString();
                          var channel = getChannel();

                          try {
                            onLoading(context, texto: 'Guardando clave');
                            await ServiceClient(channel).refCambiarClave(
                                refCambiarClaveRequest(
                                    sessionString: sessionString,
                                    clave: nuevaClave.text,
                                    msisdn: widget.msisdn,
                                    otp: widget.otp));

                            await SessionManager()
                                .set("sessionString", sessionString);
                            final prefs =
                                await SharedPreferences.getInstance();
                            await prefs.setBool('repeat', true);

                            toast('Tu clave se actualizó correctamente.',
                                Colors.green);
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MainScreen()),
                                (Route<dynamic> route) => false);
                          } on GrpcError catch (e) {
                            Navigator.of(context).pop();
                            toast(e.message ?? 'No se pudo cambiar tu clave.',
                                Colors.red);
                            return;
                          } on Exception {
                            Navigator.of(context).pop();
                            toast('No se pudo cambiar tu clave.', Colors.red);
                            return;
                          } finally {
                            channel.shutdown();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        child: const CustomFontAileronRegularWhite(text: "Guardar")
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
