import 'package:flutter/material.dart';

class SocialButton extends StatefulWidget {
  final String img;
  final String title;

  const SocialButton({super.key, required this.img, required this.title});

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          widget.img,
          height: size.height * 0.08,
          width: size.width * 0.2,
        ),
        Text(widget.title, style: const TextStyle(color: Colors.white))
      ],
    );
  }
}
