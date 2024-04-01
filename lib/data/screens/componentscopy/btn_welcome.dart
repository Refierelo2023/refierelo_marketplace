import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class BtnWelcome extends StatelessWidget {
  final VoidCallback press;
  final String title;
  const BtnWelcome({super.key, required this.press, required this.title});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 1,
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
            padding: const EdgeInsets.all(0)),
        child: Ink(
          decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [Color(0xff00DFEE), Color(0xff0096C2)],
               begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
              borderRadius: BorderRadius.circular(15)),
          child: Container(
            constraints: const BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const CustomFontAileronRegularWhite(text:" ",).getTextStyle(context),
            ),
          ),
        ),
      ),
    );
  }
}
