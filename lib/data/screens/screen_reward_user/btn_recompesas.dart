import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class BtnRecompensas extends StatelessWidget {
  final String titulo;

  final Function callback;

  const BtnRecompensas({required this.callback, super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width *0.25; // El 30% del ancho del dispositivo
    double buttonPaddingHorizontalPercentage = 0.015;

    return TextButton(
      onPressed: ()=>callback(),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
          ),
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.width * buttonPaddingHorizontalPercentage,
            horizontal: MediaQuery.of(context).size.width * buttonPaddingHorizontalPercentage,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color(0xFF003366),
                Color(0xFF02b5e7),
              ],
            ),
          ),
          child: SizedBox(
            width: buttonWidth, // Ancho del botón
            child: Text(
              titulo,
              style: const CustomFontAileronRegularWhite(
                text: "",
              ).getTextStyle(context),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class BtnYellowButton extends StatelessWidget {
  final String titulo;

  final Function callback;

  const BtnYellowButton({required this.callback, super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width *0.25; // El 30% del ancho del dispositivo
    double buttonPaddingHorizontalPercentage = 0.015;

    return TextButton(
      onPressed: ()=>callback(),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
          ),
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.width * buttonPaddingHorizontalPercentage,
            horizontal: MediaQuery.of(context).size.width * buttonPaddingHorizontalPercentage,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                 Color(0xFFce8f21),
                  Color(0xFFf8e43e),
              ],
            ),
          ),
          child: SizedBox(
            width: buttonWidth, // Ancho del botón
            child: Text(
              titulo,
              style: const CustomFontAileronRegularWhite(
                text: "",
              ).getTextStyle(context),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
