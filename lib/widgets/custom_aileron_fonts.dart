import 'package:flutter/material.dart';

class CustomFontAileronRegular extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign? textAlign;
  final int? maxLines;

  const CustomFontAileronRegular({
    super.key,
    required this.text,
    this.fontSize =0.035, // Porcentaje del tamaño de la pantalla (35% en este caso)
    this.textAlign,
    this.maxLines,
  });

  TextStyle getTextStyle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double calculatedFontSize = screenWidth * fontSize;

    return TextStyle(
      fontFamily: 'Aileron',
      fontSize: calculatedFontSize,
      fontWeight: FontWeight.w400,
      color: const Color(0xFF003366),
    );
  }

  @override
  Widget build(BuildContext context) {
   return Text(
      text,
      textAlign: textAlign,
      style: getTextStyle(context),
    );
  }
}

class CustomFontAileronRegularWhite extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign? textAlign;
  final int? maxLines;

  const CustomFontAileronRegularWhite({
    super.key,
    required this.text,
    this.fontSize =0.035, // Porcentaje del tamaño de la pantalla (35% en este caso)
    this.textAlign,
    this.maxLines,
  });

  TextStyle getTextStyle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double calculatedFontSize = screenWidth * fontSize;

    return TextStyle(
      fontFamily: 'Aileron',
      fontSize: calculatedFontSize,
      fontWeight: FontWeight.w400,
      color: const Color(0xFFffffff),
    );
  }

  @override
  Widget build(BuildContext context) {
   return Text(
      text,
      textAlign: textAlign,
      style: getTextStyle(context),
    );
  }
}

class CustomFontAileronRegular2 extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign? textAlign;
  final int? maxLines;

  const CustomFontAileronRegular2({
    super.key,
    required this.text,
    this.fontSize =0.034, // Porcentaje del tamaño de la pantalla (29% en este caso)
    this.textAlign,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double calculatedFontSize = screenWidth * fontSize;

    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: 'Aileron',
        fontSize: calculatedFontSize,
        fontWeight: FontWeight.w400,
        color: const Color(0xFFA6A6A6),
      ),
    );
  }
}

//Tipografía para links

class CustomFontAileronRegularblue extends StatelessWidget{
  final String text;
  final double fontSize;
  final TextAlign? textAlign;
  final int? maxLines;

  const CustomFontAileronRegularblue({
    super.key,
    required this.text,
    this.fontSize =0.035, // Porcentaje del tamaño de la pantalla (29% en este caso)
    this.textAlign,
    this.maxLines,
  });
  
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double calculatedFontSize = screenWidth * fontSize;

    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: 'Aileron',
        fontSize: calculatedFontSize,
        fontWeight: FontWeight.w600,
        color: const Color(0xFF0000FF),
      ),
    );
  }
}

class CustomFontAileronRegularTur extends StatelessWidget {
 final String text;
  final double fontSize;
  final TextAlign? textAlign;
  final int? maxLines;

  const CustomFontAileronRegularTur({
    super.key,
    required this.text,
    this.fontSize =0.035, // Porcentaje del tamaño de la pantalla (35% en este caso)
    this.textAlign,
    this.maxLines,
  });

  TextStyle getTextStyle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double calculatedFontSize = screenWidth * fontSize;

    return TextStyle(
      fontFamily: 'Aileron',
      fontSize: calculatedFontSize,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF00DFEE),
    );
  }

  @override
  Widget build(BuildContext context) {
   return Text(
      text,
      textAlign: textAlign,
      style: getTextStyle(context),
    );
  }
}

class CustomFontAileronSemiBold extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign? textAlign;
  final int? maxLines;

  const CustomFontAileronSemiBold({
    super.key,
    required this.text,
    this.fontSize = 0.038,
    this.textAlign,
    this.maxLines,
  });

  // Nuevo método para obtener el estilo de texto deseado
  TextStyle getTextStyle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double calculatedFontSize = screenWidth * fontSize;

    return TextStyle(
      fontFamily: 'Aileron',
      fontSize: calculatedFontSize,
      fontWeight: FontWeight.w700,
      color: const Color(0xFF003366),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: getTextStyle(context), 
    );
  }
}

class CustomFontAileronSemiBoldWhite extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign? textAlign;
  final int? maxLines;

  const CustomFontAileronSemiBoldWhite({
    super.key,
    required this.text,
    this.fontSize = 0.038,
    this.textAlign,
    this.maxLines,
  });

  // Nuevo método para obtener el estilo de texto deseado
  TextStyle getTextStyle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double calculatedFontSize = screenWidth * fontSize;

    return TextStyle(
      fontFamily: 'Aileron',
      fontSize: calculatedFontSize,
      fontWeight: FontWeight.w700,
      color: const Color(0xFFffffff),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: getTextStyle(context), 
    );
  }
}

class CustomFontAileronSemiBoldTur extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign? textAlign;
  final int? maxLines;

  const CustomFontAileronSemiBoldTur({
    super.key,
    required this.text,
    this.fontSize = 0.038,
    this.textAlign,
    this.maxLines,
  });

  // Nuevo método para obtener el estilo de texto deseado
  TextStyle getTextStyle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double calculatedFontSize = screenWidth * fontSize;

    return TextStyle(
      fontFamily: 'Aileron',
      fontSize: calculatedFontSize,
      fontWeight: FontWeight.w700,
      color: const Color(0xFF00DFEE),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: getTextStyle(context), 
    );
  }
}

class CustomFontAileronSemiBoldYellow extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign? textAlign;
  final int? maxLines;

  const CustomFontAileronSemiBoldYellow({
    super.key,
    required this.text,
    this.fontSize = 0.038,
    this.textAlign,
    this.maxLines,
    });
    // Nuevo método para obtener el estilo de texto deseado
  TextStyle getTextStyle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double calculatedFontSize = screenWidth * fontSize;

    return TextStyle(
      fontFamily: 'Aileron',
      fontSize: calculatedFontSize,
      fontWeight: FontWeight.w700,
      color: const Color(0xFFf8e43e),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: getTextStyle(context), 
    );
  }
}

class CustomFontAileronBold extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign? textAlign;
  final int? maxLines;

  const CustomFontAileronBold({
    super.key,
    required this.text,
    this.fontSize = 0.038, // 38% del tamaño de la pantalla
    this.textAlign,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double calculatedFontSize = screenWidth * fontSize;

    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: 'Aileron',
        fontSize: calculatedFontSize,
        fontWeight: FontWeight.w700,
        color: const Color(0xFF003366),
      ),
    );
  }
}

class CustomFontAileronBlack extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign? textAlign;
  final int? maxLines;

  const CustomFontAileronBlack({
    super.key,
    required this.text,
    this.fontSize = 0.042,
    this.textAlign,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double calculatedFontSize = screenWidth * fontSize;

    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: 'Aileron',
        fontSize: calculatedFontSize,
        fontWeight: FontWeight.w600,
        color: const Color(0xFF000000),
      ),
    );
  }
}

class CustomFontAileronBold2 extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign? textAlign;
  final int? maxLines;

  const CustomFontAileronBold2({
    super.key,
    required this.text,
    this.fontSize = 0.048,
    this.textAlign,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double calculatedFontSize = screenWidth * fontSize;

    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: 'Aileron',
        fontSize: calculatedFontSize,
        fontWeight: FontWeight.w700,
        color: const Color(0xFF000000),
      ),
    );
  }
}

class CustomFontAileronBold2White extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign? textAlign;
  final int? maxLines;

  const CustomFontAileronBold2White({
    super.key,
    required this.text,
    this.fontSize = 0.060,
    this.textAlign,
    this.maxLines,
  });

  // Nuevo método para obtener el estilo de texto deseado
  TextStyle getTextStyle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double calculatedFontSize = screenWidth * fontSize;

    return TextStyle(
      fontFamily: 'Aileron',
      fontSize: calculatedFontSize,
      fontWeight: FontWeight.w700,
      color: const Color(0xFFffffff),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: getTextStyle(context), 
    );
  }
}





class CustomFontAileronBlackTur extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign? textAlign;
  final int? maxLines;

  const CustomFontAileronBlackTur({
    super.key,
    required this.text,
    this.fontSize = 0.042,
    this.textAlign,
    this.maxLines,
  });

  // Nuevo método para obtener el estilo de texto deseado
  TextStyle getTextStyle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double calculatedFontSize = screenWidth * fontSize;

    return TextStyle(
      fontFamily: 'Aileron',
      fontSize: calculatedFontSize,
      fontWeight: FontWeight.w600,
      color: const Color(0xFF02b5e7),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: getTextStyle(context), 
    );
  }
}
class CustomFontAileronBold3grey extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign? textAlign;
  final int? maxLines;

  const CustomFontAileronBold3grey({
    super.key,
    required this.text,
    this.fontSize = 0.060,
    this.textAlign,
    this.maxLines,
  });

  // Nuevo método para obtener el estilo de texto deseado
  TextStyle getTextStyle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double calculatedFontSize = screenWidth * fontSize;

    return TextStyle(
      fontFamily: 'Aileron',
      fontSize: calculatedFontSize,
      fontWeight: FontWeight.w700,
      color: const Color(0xFF666666),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: getTextStyle(context), 
    );
  }
}