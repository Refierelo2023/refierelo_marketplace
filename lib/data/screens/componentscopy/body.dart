import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:grpc/grpc.dart';
import 'package:flutter/src/widgets/async.dart' as asc;
import 'package:refierelo_marketplace/background_image_widget.dart';
import 'package:refierelo_marketplace/constants.dart';
import 'package:refierelo_marketplace/data/screens/ErrorScreen/error_screen.dart';
import 'package:refierelo_marketplace/data/screens/Login/options_login_screen.dart';
import 'package:refierelo_marketplace/data/screens/Register/register_screen.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/btn_welcome.dart';
import 'package:refierelo_marketplace/data/screens/main_screen.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';

class Body extends StatelessWidget {
  var bgimg = "";
  var welcomMsg = "¡Bienvenido!";

  Body({super.key});

  Future<String> getConfig() async {
    try {
      final channel = ClientChannel(
        // '18.188.244.114',
        host,
        port: getPort(),
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()),
      );
      final stub = ServiceClient(channel);
      var response =
          await stub.ladingConfig(landingConfigRequest()..flag = "Ping");

      bgimg = response.backgroundUrl;
      welcomMsg = response.welcomeMessage;
      

      //Guardando el mensaje en la sesión
      await SessionManager().set("msg", welcomMsg);
      await channel.shutdown();
      return "data";
    } catch (error) {
      print('Error en getConfig(): $error');
      // Puedes agregar más información o manejo de errores aquí
      throw error; // Propaga el error para que pueda ser capturado en el FutureBuilder
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return FutureBuilder<String>(
        // future: getConfig(),
        builder: (context, AsyncSnapshot<String> snapshot) {
          if (snapshot.connectionState == asc.ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.connectionState == asc.ConnectionState.done) {
            if (snapshot.hasError) {
              return const ErrorScreen();
            } else {
              return backgroundImageWidget(
                  // Donde irá imagen traída desde API
                  image: bgimg,
                  //  NetworkImage(bgimg),
                  child: Scaffold(
                      backgroundColor: Colors.transparent,
                      body: (Container(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height * 0.2,
                              width: size.width * 0.4,
                              child: const Image(
                                image:
                                    AssetImage('assets/images/logo2.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(height: size.height * 0.2),
                            Text(
                              welcomMsg,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Sans"),
                            ),
                            SizedBox(height: size.height * 0.32),
                            BtnWelcome(
                                press: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                             RegisterScreen()),
                                  );
                                },
                                title: 'Registrarse'),
                            SizedBox(height: size.height * 0.01),
                            BtnWelcome(
                              press: () async {
                                if ((await SessionManager()
                                        .containsKey('sessionString')) ==
                                    true) {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) => const MainScreen(),// Se cambia por nuevo menu
                                      ),
                                      (route) => false);
                                } else {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>const OptionsLoginScreen()),
                                  );
                                }
                              },
                              title: 'Ingresar',
                            ),
                          ],
                        ),
                      ))));
            }
          }
          return const Center(child: CircularProgressIndicator());
        }, future: null,);
  }
}
