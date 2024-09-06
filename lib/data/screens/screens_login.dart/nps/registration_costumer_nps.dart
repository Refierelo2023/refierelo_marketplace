import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/main_screen.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/tab_bar_nps.dart';

class RegistrationCostumerNps extends StatefulWidget {
  const RegistrationCostumerNps({super.key});

  @override
  RegistrationCostumerNpsState createState() => RegistrationCostumerNpsState();
}

class UserNameProvider extends ChangeNotifier {
  String _userName = '';

  String get userName => _userName;

  void setUserName(String name) {
    _userName = name;
    notifyListeners();
  }
}

class RegistrationCostumerNpsState extends State<RegistrationCostumerNps> {
  TextEditingController nombreClienteController = TextEditingController();
  TextEditingController presentacionController = TextEditingController();

  Widget _buildButton(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width * 0.25;
    double buttonPaddingHorizontalPercentage = 0.020;

    return GestureDetector(
      onTap: () {
        Provider.of<UserNameProvider>(context, listen: false)
            .setUserName(nombreClienteController.text);            
         TabBarNpsState tabBarNpsState = context.findAncestorStateOfType<TabBarNpsState>()!;
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

  Widget _buildButton2 (BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width * 0.25;
    double buttonPaddingHorizontalPercentage = 0.020;

    return GestureDetector(
      onTap: () {   
         Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MainScreen()), // Navega al widget MainScreen
        );    
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
                  Color(0xFFffffff),
                  Color(0xFFffffff),
                ],
              ),
            ),
            child: SizedBox(
              width: buttonWidth,
              child: const Text(
                'En otro momento',
                style: TextStyle(
                  fontFamily: 'Aileron',
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
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
      body: Container(
        decoration:  BoxDecoration(
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
                        "¡ Prueba la encuesta que le enviaras a tus clientes !",
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
                        'En una pantalla  como esta tus colaboradores podrán ingresar diariamente tus clientes, nuestro chatbot envia tu encuesta vía WhatsApp',
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
                      // TextField(
                      //   enabled: false,
                      //   decoration: InputDecoration(
                      //     labelText: 'Número de Celular 31********',
                      //     filled: true,
                      //     fillColor: const Color(0xFFfafafa),
                      //     border: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(15),
                      //       borderSide:
                      //           const BorderSide(color: Color(0xFF02B5E7)),
                      //     ),
                      //     focusedBorder: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(15),
                      //       borderSide:
                      //           const BorderSide(color: Color(0xFF02B5E7)),
                      //     ),
                      //     labelStyle: const TextStyle(
                      //         fontFamily: "Aileron",
                      //         fontSize: 14,
                      //         color: Color(0xFFd3d3d3)),
                      //     contentPadding: const EdgeInsets.symmetric(
                      //         vertical: 15.0, horizontal: 15.0),
                      //   ),
                      // ),
                      const SizedBox(height: 20),
                      _buildButton(context),
                      const SizedBox(height: 20),
                      _buildButton2(context),
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
