import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class ComprarContainer extends StatelessWidget {
  final double screenWidth;
  final String price;

  const ComprarContainer({
    super.key,
    required this.screenWidth,
    required this.price,
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
                    CustomFontAileronRegularWhite(
                      text: "Compralo por:",
                      fontSize: 0.028,
                    ),
                  ],
                ),
                Text(
                  price,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Aileron",
                    fontSize: screenWidth * 0.037,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
