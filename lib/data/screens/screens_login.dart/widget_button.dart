import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class WidgetButton extends StatelessWidget {
  final VoidCallback press;
  final String title;

const WidgetButton({super.key, required this.press, required this.title});

  @override
  Widget build(BuildContext context) {   
    double buttonPaddingHorizontalPercentage = 0.025;

    return GestureDetector(     
      onTap: press, 
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
                  Color(0xFF003366),
                  Color(0xFF02b5e7),
                ],
              ),
            ),
            child: CustomFontAileronRegularWhite(text: (title)
            ,textAlign: TextAlign.center),
          ),
        ),
      ),
    );
  }
}
