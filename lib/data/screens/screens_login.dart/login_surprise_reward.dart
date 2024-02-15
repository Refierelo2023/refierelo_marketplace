import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile.dart/screens_buy_points.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class LoginSurpriseRewardScreen extends StatelessWidget {
  const LoginSurpriseRewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo de pantalla
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/images_login/background_recompensa.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.49,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Container(
                padding: const EdgeInsets.only(top: 0, bottom: 6),
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.width * 0.10,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10), // Espacio entre textos
                    // Texto 2: "Puntos"
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Align(
                            alignment: Alignment.center,
                            child: CustomFontAileronBold(
                              text: "100",
                              fontSize: 0.043,
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Center(
                          child: CustomFontAileronRegular(
                            text: "Puntos",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Texto 3: "¡Felicitaciones!"
          Positioned(
            top: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height *
                0.75, // Altura vertical texto
            child: Center(
              child: Text(
                "¡ Felicitaciones !",
                style: TextStyle(
                  fontFamily: 'Aileron',
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          // Texto 4: "Te damos la bienvenida..."
          Positioned(
            top: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Te damos la bienvenida a Refiérelo, con este regalo queremos brindarte la mejor experiencia",
                    style: TextStyle(
                      fontFamily: 'Aileron',
                      fontSize: MediaQuery.of(context).size.width * 0.038,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20), // Espacio entre el texto y el botón
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ScreensBuyPoints()), // Ir a LoginScreensCategories
                      );
                    },
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: FractionallySizedBox(
                        widthFactor: 0.5,
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width,
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.width * 0.025,
                            horizontal:MediaQuery.of(context).size.width * 0.035,
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
                          child: const Text(
                            'Aceptar Regalo',
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
                  const SizedBox(height: 40,),
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.002),                    
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Quiero más puntos',
                          style: TextStyle(
                            fontFamily: 'Aileron',
                            fontSize: MediaQuery.of(context).size.width * 0.038, 
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Recarga Aquí',
                          style: TextStyle(
                            fontFamily: 'Aileron',
                            fontSize: MediaQuery.of(context).size.width * 0.038,
                            color: const Color(0xFF03F9FF),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 80,),
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.002),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sujeto a Términos y condiciones www.refierelo.com',
                          style: TextStyle(
                            fontFamily: 'Aileron',
                            fontSize: MediaQuery.of(context).size.width * 0.038, 
                            color: Colors.white,
                          ),
                        ),                                                
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
