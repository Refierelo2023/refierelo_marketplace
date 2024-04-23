import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class ReferirContainer extends StatelessWidget {
  final double screenWidth;
  final String points;

  const ReferirContainer({
    super.key,
    required this.screenWidth,
    required this.points,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.005,
      ),
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: screenWidth * 0.2,
        child: Container(
          width: screenWidth,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                // Color(0xFF003366),
                // Color(0xFF02b5e7),
                const Color(0xFF003366).withOpacity(0.7),
                Colors.transparent,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(0), // Borde superior izquierdo
              topRight: Radius.circular(0), // Borde superior derecho
              bottomLeft: Radius.circular(15), // Borde inferior izquierdo
              bottomRight: Radius.circular(15), // Borde inferior derecho
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Row(
                  children: [                    
                    FaIcon(
                      FontAwesomeIcons.registered, // Icono de marca registrada
                      color: Color(0xFFce8f21),
                      size: 15,
                    ),
                    SizedBox(width: 5,),
                    CustomFontAileronRegularWhite(
                      text: "Gánate:",
                      fontSize: 0.028,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      points,
                      style: TextStyle(
                        fontFamily: "Aileron",
                        fontSize: screenWidth * 0.037,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 3),
                    Text(
                      "Puntos",
                      style: TextStyle(
                        fontFamily: "Aileron",
                        fontSize: screenWidth * 0.025,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
