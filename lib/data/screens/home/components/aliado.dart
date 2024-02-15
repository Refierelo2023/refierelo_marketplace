import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AliadoComponenet extends StatelessWidget {
  String img;
  String title;

  AliadoComponenet({super.key, required this.img, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(img, height: 30, width: 30),
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 10),
        )
      ],
    );
  }
}
