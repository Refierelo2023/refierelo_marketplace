import 'package:flutter/material.dart';

class BtnWelcome extends StatelessWidget {
  final VoidCallback press;
  final String title;
  const BtnWelcome({super.key, required this.press, required this.title});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.6,
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
            padding: const EdgeInsets.all(0)),
        child: Ink(
          decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                Color(0xff0080BF),
                Color(0xff1393BF),
                Color(0xff00DFDF)
              ], begin: Alignment.centerLeft, end: Alignment.centerRight),
              borderRadius: BorderRadius.circular(30)),
          child: Container(
            constraints: const BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
