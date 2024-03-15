import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/Register/components/terms_check.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/actividad_nps.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/tab_bar_nps.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:share_plus/share_plus.dart';

class RegistrationCostumerNpsPhone extends StatefulWidget {
  const RegistrationCostumerNpsPhone({super.key});

  @override
  RegistrationCostumerNpsPhoneState createState() =>
      RegistrationCostumerNpsPhoneState();
}

class UserNameProvider extends ChangeNotifier {
  String _userName = '';

  String get userName => _userName;

  void setUserName(String name) {
    _userName = name;
    notifyListeners();
  }
}

class RegistrationCostumerNpsPhoneState
    extends State<RegistrationCostumerNpsPhone> {
  TextEditingController nombreClienteController = TextEditingController();
  TextEditingController presentacionController = TextEditingController();
  TextEditingController celularController = TextEditingController();

  Widget _buildButton(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width * 0.25;
    double buttonPaddingHorizontalPercentage = 0.020;

    return GestureDetector(
      onTap: () {
        Provider.of<UserNameProvider>(context, listen: false)
            .setUserName(nombreClienteController.text);
        TabBarNpsState tabBarNpsState =
            context.findAncestorStateOfType<TabBarNpsState>()!;
        tabBarNpsState.changeTab(1);
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
                'Guardar',
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF003366),
        toolbarHeight: 40,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded, color: Color(0xFFffffff)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ActividadNpsScreen()),
            );
          },
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: FloatingActionButton(
          onPressed: () {
            String textToShare = "¡Página de Registro de clientes!\n";
            Share.share(textToShare);
          },
          backgroundColor: Colors.white,
          child: const Icon(Icons.share), // Color de fondo blanco
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked, 
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          gradient: const LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color(0xFF02b5e7),
              Color(0xFF003366),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/images/logo2.png',
                  width: 135,
                  height: 135,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "¡ Registro de clientes !",
                        style: TextStyle(
                          fontFamily: "Aileron",
                          fontSize: MediaQuery.of(context).size.width * 0.048,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Ingresa los datos de tu cliente para enviar la encuesta vía whatsapp ',
                        style: TextStyle(
                          fontFamily: "Ailer",
                          fontSize: MediaQuery.of(context).size.width * 0.035,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: nombreClienteController,
                        decoration: InputDecoration(
                          labelText: 'Nombre del Cliente',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                const BorderSide(color: Color(0xFF02B5E7)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                const BorderSide(color: Color(0xFF02B5E7)),
                          ),
                          labelStyle: const TextStyle(
                              fontFamily: "Aileron",
                              fontSize: 14,
                              color: Color(0xFF003366)),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 15.0),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                        textAlignVertical: TextAlignVertical.bottom,
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Número de Celular 31********',
                          filled: true,
                          fillColor: const Color(0xFFffffff),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                const BorderSide(color: Color(0xFF02B5E7)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                const BorderSide(color: Color(0xFF02B5E7)),
                          ),
                          labelStyle: const TextStyle(
                              fontFamily: "Aileron",
                              fontSize: 14,
                              color: Color(0xFF003366)),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 15.0),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [TermsCheck()],
                          ),
                          Column(
                            children: [
                              RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  text: 'El cliente',
                                  style: const CustomFontAileronRegularWhite(
                                    text: " ",
                                  ).getTextStyle(context),
                                  children: [
                                    TextSpan(
                                      text: ' autoriza',
                                      style:
                                          const CustomFontAileronRegularTur(
                                        text: " ",
                                      ).getTextStyle(context),
                                    ),
                                    TextSpan(
                                      text: ' el tratamiento de sus\n',
                                      style:
                                          const CustomFontAileronRegularWhite(
                                        text: " ",
                                      ).getTextStyle(context),
                                    ),
                                    TextSpan(
                                      text: 'datos personales',
                                      style:
                                          const CustomFontAileronRegularWhite(
                                        text: " ",
                                      ).getTextStyle(context),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      _buildButton(context),
                    ],
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
