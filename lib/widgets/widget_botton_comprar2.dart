import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/widgets/widgets_botton_referir.dart';

class WidgetBottonComprar2 extends StatelessWidget {
  const WidgetBottonComprar2({super.key});

  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width * 0.25;
    double buttonPaddingHorizontalPercentage = 0.015;

    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return const WidgetDisplayReferir();
          },
        );
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
                Color(0xFFce8f21),
                Color(0xFFf8e43e),
              ],
            ),
          ),
          child: const Text(
            'Comprar',
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
    );
  }
}




