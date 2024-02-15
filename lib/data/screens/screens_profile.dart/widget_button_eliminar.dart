import 'package:flutter/material.dart';


class WidgetBottonEliminar extends StatefulWidget {
  const WidgetBottonEliminar({super.key});

  @override
  WidgetBottonEliminarState createState() => WidgetBottonEliminarState();
}

class WidgetBottonEliminarState extends State<WidgetBottonEliminar> {
  bool isReferring = false;

  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width * 0.25;
    double buttonPaddingHorizontalPercentage = 0.015;

    return GestureDetector(
      onTap: () {
        setState(() {
          isReferring = !isReferring;
        });        
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          width: buttonWidth,
          constraints: BoxConstraints(
            maxWidth: buttonWidth,
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
                Color(0xFF003366),
                Color(0xFF02b5e7),
              ],
            ),
          ),
          child: Text(
            isReferring ? 'Refiriendo' : 'Eliminar',
            style: const TextStyle(
              fontFamily: 'Aileron',
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

