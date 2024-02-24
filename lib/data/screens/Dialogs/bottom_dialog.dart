import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class BottomDialog extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  const BottomDialog({super.key, required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width * 0.25;
    double buttonPaddingHorizontalPercentage = 0.015;

    return GestureDetector(
      onTap: onPressed,
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
              colors: [Color(0xff0096C2), Color(0xff00DFEE)],
            ),
          ),
          child: CustomFontAileronRegularWhite(
              text: (title), textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
