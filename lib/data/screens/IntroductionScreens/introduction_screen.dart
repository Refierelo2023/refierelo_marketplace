import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/IntroductionScreens/components/introduction_content.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
          height: size.height*1,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff003366), Color(0xff02B5E7)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: PageView(
        controller: controller,
        children: [
          IntroductionContent(
            img: 'assets/images/animaciones_intro/animation_one.gif',
            lineOne: 'Refiérelo, es la nueva forma de',
            lineTwo: 'Obtener recompensas, Refiriendo',
            lineThree: 'Familiares, Amigos y conocidos.',
            lineFour: '',
            index: 0,
          ),
          IntroductionContent(
            img: 'assets/images/animaciones_intro/animation_two.gif',
            lineOne: 'Conectamos el ecosistema',
            lineTwo: 'empresarial con tus referidos.',
            lineThree: '',
            lineFour: '',
            index: 1,
          ),
          IntroductionContent(
            img: 'assets/images/animaciones_intro/animation_three.gif',
            lineOne: 'Identifica la necesidad de tu',
            lineTwo: 'referido.',
            lineThree: '',
            lineFour: '',
            index: 2,
          ),
          IntroductionContent(
            img: 'assets/images/animaciones_intro/animation_four.gif',
            lineOne: '1. Comparte contenidos',
            lineTwo: '2. Refiere a tus interesados',
            lineThree: '3. Gana recompensas',
            lineFour: '',
            index: 3,
          )
        ],
      ),
    ));
  }
}
