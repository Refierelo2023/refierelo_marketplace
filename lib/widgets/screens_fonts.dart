import 'package:flutter/material.dart';

class ScreensFonts {
  static TextStyle aileronRegular({
    Color color = Colors.black,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return TextStyle(
      fontFamily: 'Aileron', // Nombre de la fuente definido en pubspec.yaml
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }

   static TextStyle aileronSemiBold({
    Color color = Colors.black,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w600, // FontWeight para Aileron SemiBold
  }) {
    return TextStyle(
      fontFamily: 'Aileron',
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }
  static TextStyle aileronBlack({
    Color color = Colors.black,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w900, // FontWeight para Aileron SemiBold
  }) {
    return TextStyle(
      fontFamily: 'Aileron',
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }
 static TextStyle aileronBold({
    Color color = Colors.black,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w700, // FontWeight para Aileron SemiBold
  }) {
    return TextStyle(
      fontFamily: 'Aileron',
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }
}

