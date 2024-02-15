import 'package:flutter/material.dart';

class SectionContent extends StatelessWidget {
  final String content;
  final double fontSize;
  const SectionContent({super.key, this.fontSize = 10, required this.content});

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
            (
                content,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: fontSize,
                    height: 1.4
                    )
            )
      )
    );
  }
}
