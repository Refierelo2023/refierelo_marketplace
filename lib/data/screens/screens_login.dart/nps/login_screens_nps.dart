import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_screens_setup_account.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/tab_bar_nps.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/widget_carrusel.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/widget_carrusel2.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class LoginScreensNps extends StatefulWidget {
  const LoginScreensNps({super.key});

  @override
  LoginScreensNpsState createState() => LoginScreensNpsState();
}

class LoginScreensNpsState extends State<LoginScreensNps> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/images/nps/estrellasnps.png",
                  height: 90,
                  width: 90,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: CustomFontAileronBold2(
                    text: "Net Promoter Score (NPS)",
                  ),
                ),
                // const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: const CustomFontAileronRegular(
                      text:
                          "La encuesta Nps Monitorea la experiencia de tus clientes y te ayudan a generar insights para mejorar tus productos y servicios",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: const CustomFontAileronBold(
                      text: "Así categorizamos tus clientes",
                    ),
                  ),
                ),
                const WidgetEmojiCategories(),
                const SizedBox(height: 30),
                const WidgetCarrusel2(),
                const SizedBox(height: 30),
                Column(
                  children: [
                    const CustomFontAileronBold2(
                      text: "Encuesta Gratis",
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 5, right: 5, bottom: 0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text:
                              "Ingresa tu nombre y prueba la encuesta gratuita",
                          style: const CustomFontAileronRegular(
                            text: " ",
                          ).getTextStyle(context),
                          children: [
                            TextSpan(
                                text: " pásate a Gold ó Premium",
                                style: const CustomFontAileronSemiBold(
                                  text: "",
                                ).getTextStyle(context).copyWith(height: 1.5)),
                            TextSpan(
                              text:
                                  " para personalizar las imagenes y las preguntas, obten beneficios exclusivos",
                              style: const CustomFontAileronRegular(
                                text: " ",
                              ).getTextStyle(context).copyWith(height: 1.5),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: const Column(
                    children: [
                      SizedBox(height: 10),
                      Expanded(child: TabBarNps())
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.all(10.0),
      //   child: _buildButton(context),
      // ),
      appBar: AppBar(
        toolbarHeight: 30,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
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
