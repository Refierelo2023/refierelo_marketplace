import 'package:flutter/material.dart';

class TitleContent extends StatelessWidget {
  final String title;
  final double fontSize;

  const TitleContent({super.key, this.fontSize = 18, required this.title});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container
    (
        margin: EdgeInsets.symmetric(vertical: size.height * 0.01, horizontal: size.width * 0.04),
        child: Align
        (
            alignment: Alignment.centerLeft,
            child: Text
            (title,
                style: TextStyle
                (
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: fontSize
                )
            )
        )
    );
  }
}