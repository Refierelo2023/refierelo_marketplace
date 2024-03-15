import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/Register/options_register_screen.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_screens.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_type_company.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:http/http.dart' as http;

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  Future<void> enviarWebhook(String tipo) async {
    final url = Uri.parse("http://5.189.161.131:5000/webhook");
    final data = {"tipo": tipo};

    final respuesta = await http.post(url, body: data);
    if (respuesta.statusCode == 200) {
      print('Webhook enviado con éxito');
    } else {
      print('Error al enviar el webhook: ${respuesta.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldMessengerKey,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => const LoginTypeCompany(),
              ),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OptionsRegisterScreen(
                      msisdn: '',
                    ),
                  ),
                );
                await enviarWebhook("referente");
                print('Webhook enviado para referente');
              },
              child: cardReferente(context, () => null),
            ),
            GestureDetector(
                onTap: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreens(),
                    ),
                  );
                  await enviarWebhook("comercio");
                   print('Webhook enviado para Comercio');
                },
                child: cardComercio(context, () => null)),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  Container cardComercio(BuildContext context, Function()? onTap) {
    return Container(
      margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.04,
          right: MediaQuery.of(context).size.width * 0.04,
          top: MediaQuery.of(context).size.height * 0.02),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Color(0xff02b5e7), Color(0xff003366)]),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image(
                  image:
                      AssetImage('assets/images/option_register/comercio.png'),
                  width: 140,
                  height: 170,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            Column(children: [
              const SizedBox(
                height: 40,
                child: CustomFontAileronSemiBoldWhite(
                  text: "Tengo un negocio",
                  textAlign: TextAlign.justify,
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'Crea tu comunidad,\n',
                    style: const CustomFontAileronRegularWhite(
                      text: " ",
                    ).getTextStyle(context).copyWith(height: 1.5),
                    children: [
                      TextSpan(
                          text: 'impulsa tu negocio\n',
                          style: const CustomFontAileronSemiBoldTur(
                            text: " ",
                            textAlign: TextAlign.left,
                          ).getTextStyle(context).copyWith(height: 1.5)),
                      TextSpan(
                          text: 'y promociona tus productos \n',
                          style: const CustomFontAileronRegularWhite(text: " ")
                              .getTextStyle(context)
                              .copyWith(height: 1.5)),
                      TextSpan(
                          text: 'con nuestros Referentes.\n ',
                          style: const CustomFontAileronRegularWhite(text: " ")
                              .getTextStyle(context)
                              .copyWith(height: 1.5)),
                      TextSpan(
                          text: '',
                          style: const CustomFontAileronRegularWhite(text: " ")
                              .getTextStyle(context)
                              .copyWith(height: 1.5)),
                    ]),
              ),
            ])
          ],
        ),
      ),
    );
  }

  Container cardReferente(BuildContext context, Function()? onTap) {
    return Container(
      margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.04,
          right: MediaQuery.of(context).size.width * 0.04,
          top: MediaQuery.of(context).size.height * 0.02),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Color(0xff02b5e7), Color(0xff003366)]),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Image(
              alignment: Alignment.bottomCenter,
              image: AssetImage('assets/images/otp/superreferente.png'),
              // image: AssetImage('assets/images/register/personaje.png'),
              width: 140,
              height: 180,
              fit: BoxFit.contain,
            ),
            Column(children: [
              const SizedBox(
                height: 40,
                child: CustomFontAileronSemiBoldWhite(
                  text: 'Quiero ser Referente',
                  textAlign: TextAlign.justify,
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'Gana miles de recompensas\n',
                    style: const CustomFontAileronSemiBoldTur(
                      text: " ",
                    ).getTextStyle(context).copyWith(height: 1.5),
                    children: [
                      TextSpan(
                          text: 'compartiendo contenido y\n',
                          style: const CustomFontAileronRegularWhite(
                            text: " ",
                            textAlign: TextAlign.left,
                          ).getTextStyle(context).copyWith(height: 1.5)),
                      TextSpan(
                          text: 'refiriendo familiares, amigos \n',
                          style: const CustomFontAileronRegularWhite(text: " ")
                              .getTextStyle(context)
                              .copyWith(height: 1.5)),
                      TextSpan(
                          text: 'y conocidos ',
                          style: const CustomFontAileronRegularWhite(text: " ")
                              .getTextStyle(context)
                              .copyWith(height: 1.5)),
                    ]),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
