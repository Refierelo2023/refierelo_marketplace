import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';


final Shader linearGradient = const LinearGradient(colors: <Color>[
  Color.fromRGBO(255, 79, 64, 100),
  Color.fromRGBO(255, 68, 221, 100)
], begin: Alignment.topLeft, end: Alignment.bottomRight)
    .createShader(const Rect.fromLTWH(0.0, 0.0, 500.0, 70.0));

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.only(bottom: 6),
        child: Image.asset('images/logo.png', width: 24),
      ),
      Expanded(
          child: Container(
              margin: const EdgeInsets.all(6),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    Text('Flutter',
                        style: const CustomFontAileronRegular(text: "",).getTextStyle(context)
                        ),
                    Text('Sample App',
                        style: const CustomFontAileronRegular(text: "",).getTextStyle(context)                        
                        ),
                  ])))
    ]);
  }
}
