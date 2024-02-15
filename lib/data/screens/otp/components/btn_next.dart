import 'package:flutter/material.dart';

class BtnNext extends StatelessWidget {
  final VoidCallback press;
  final String title;

  const BtnNext({super.key, required this.press, required this.title});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Center(
      child: Container(
        width: size.width * 0.7,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Color(0xff0096C2), Color(0xff00DFEE)]),
            borderRadius: BorderRadius.circular(30)),
        child: TextButton(
            style: TextButton.styleFrom(
                foregroundColor: Colors.white, padding: const EdgeInsets.all(16.0),
                textStyle: const TextStyle(fontSize: 18)),
            onPressed: press,
            child: Text(title)),
      ),
    );
  }
}
