import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/Welcome/welcome_screen.dart';
import 'package:refierelo_marketplace/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class IntroductionContent extends StatefulWidget {
  String img;
  String lineOne;
  String lineTwo;
  String lineThree;
  String lineFour;
  int index;

  IntroductionContent(
      {super.key,
      required this.img,
      required this.lineOne,
      required this.lineTwo,
      required this.lineThree,
      required this.lineFour,
      required this.index});

  @override
  State<IntroductionContent> createState() => _IntroductionContentState();
}

class _IntroductionContentState extends State<IntroductionContent> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: size.height * 0.1),
        Image(image: AssetImage(widget.img), height: size.height*0.4, width: size.width*1,),
        SizedBox(height: size.height * 0.02),
        AnimatedSmoothIndicator(
          activeIndex: widget.index,
          count: 4,
          effect: const WormEffect(activeDotColor: Colors.white),
        ),
        SizedBox(height: size.height * 0.1),
        Text(
          widget.lineOne,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          widget.lineTwo,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          widget.lineThree,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: size.height * 0.1),
        GestureDetector(
          onTap: () async {
            final prefs = await SharedPreferences.getInstance();

            await prefs.setBool('showIntroduction', true);

            Navigator.pushAndRemoveUntil(
                navigatorKey.currentContext!,
                MaterialPageRoute
                (
                  builder: (BuildContext context) => const WelcomeScreen()),
                  (route) => false
                );
          },
          child: Text((widget.index == 3) ? 'Iniciar' : 'Omitir',
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  decoration: TextDecoration.underline)),
        ),
      ],
    );
  }
}
