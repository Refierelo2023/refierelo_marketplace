import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:refierelo_marketplace/data/screens/Login/options_login_screen.dart';
import 'package:refierelo_marketplace/data/screens/Register/register_screen.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/btn_welcome.dart';
import 'package:refierelo_marketplace/data/screens/main_screen.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:http/http.dart' as http;


class Body extends StatelessWidget {
  var welcomMsg = "¡Bienvenido!";

  Body({super.key});

  void enviarWebhook(String palabra) {
  final url = Uri.parse("http://5.189.161.131:5000/webhook");
  final data = {'registrase': palabra};
  
  // print('Enviando webhook con datos: $data');

  http.post(url, body: data).then((respuesta) {
    if (respuesta.statusCode == 200) {
      // print('Webhook enviado con éxito');
    } else {
      // print('Error al enviar el webhook: ${respuesta.statusCode}');
    }
  }).catchError((error) {
    // print('Error al enviar el webhook: $error');
  });
}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/images_login/body1.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          height: size.height,
          alignment: Alignment.center,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xff000000).withOpacity(0.6),
                      const Color(0xff000000).withOpacity(0.6),
                    ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: SizedBox(
                      height: size.height * 0.2,
                      width: size.width * 0.5,
                      child: const Image(
                        image: AssetImage('assets/images/logo2.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                   SizedBox(height: size.height* 0.3,),
                  Container(
                    alignment: Alignment.center,
                    child: CustomFontAileronBold2White(
                      text: welcomMsg,
                    ),
                  ),
                  // Contenedor flexible para el contenido principal
                  const Expanded(
                    child: SizedBox(),
                  ),
                ],
              ),
              // Contenedor fijo para los botones en la parte inferior
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    BtnWelcome(
                      press: () {
                        enviarWebhook("registrarse");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()),
                        );
                      },
                      title: 'Registrarse',
                    ),
                    SizedBox(height: size.height * 0.02),
                    BtnWelcome(
                      press: () async {
                        if ((await SessionManager()
                                .containsKey('sessionString')) ==
                            true) {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const MainScreen(),
                            ),
                            (route) => false,
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const OptionsLoginScreen(),
                            ),
                          );
                        }
                      },
                      title: 'Ingresar',
                    ),
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

