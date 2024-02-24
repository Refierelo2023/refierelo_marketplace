import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_screens_setup_account.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/answer_one_nps_option1.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/answer_one_nps_option2.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/answer_one_nps_option2_option1.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/answer_three.nps.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/answer_two_nps_option1.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/question_one_nps.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/answer_two_nps.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/answer_one_nps.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/registration_costumer_nps.dart';
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
  Widget build(BuildContext context,) {
    return DefaultTabController(
      initialIndex: 0,
      length: 9,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        text:"La encuesta Nps Monitorea la experiencia de tus clientes y te ayudan a generar insights para mejorar tus productos y servicios",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  WidgetCarruselNps(
                      height: MediaQuery.of(context).size.height * 0.34),
                  const SizedBox(height: 30),
                  WidgetCarrusel2(
                      height: MediaQuery.of(context).size.height * 0.34),
                  const SizedBox(height: 10),
                  Column(
                    children: [
                      const CustomFontAileronBold2(
                        text: "Encuesta Gratis",
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 5, right: 5, bottom: 0),
                        child: RichText(
                          textAlign: TextAlign.center,
                        text: TextSpan(
                            text:"Ingresa tu nombre y prueba la encuesta gratuita",
                            style: const CustomFontAileronRegular(
                              text: " ",
                            ).getTextStyle(context),
                            children: [
                              TextSpan(
                                  text: " pásate a Gold ó Premium",
                                  style: const CustomFontAileronSemiBold(
                                    text: "",
                                  )
                                      .getTextStyle(context)
                                      .copyWith(height: 1.5)),
                              TextSpan(
                                text:" para personalizar las imagenes y las preguntas, obten beneficios exclusivos",
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
                        SizedBox(height: 20,),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Center(child: RegistrationCostumerNps()),
                              Center(child: QuestionOneNps()),
                              Center(child: QuestionTwoNps()),
                              Center(child: QuestionThreeNps()),
                              Center(child: AnswerThreeNps()),
                              Center(child: AnswerOneNpsOption1()),
                              Center(child: AnswerOneNpsOption2()),
                              Center(child: AnswerTwoNpsOption2()),
                              Center(child: AnswerOneNpsOption2Option1()),
                            ],
                          ),
                        ),
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
      ),
    );
  }
}
