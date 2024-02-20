import 'package:flutter/material.dart';

class BtnNext extends StatelessWidget {
  final VoidCallback press;
  final String title;

  const BtnNext({super.key, required this.press, required this.title});

  @override
  Widget build(BuildContext context) {   

    return Center(
      child: FractionallySizedBox(
        widthFactor: 0.6,
        child: Container(          
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Color(0xff0096C2), Color(0xff00DFEE)]),
              borderRadius: BorderRadius.circular(15)),
          child: TextButton(
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white, padding: const EdgeInsets.all(10.0),
                  textStyle: const TextStyle(fontSize: 13)),
              onPressed: press,
              child: Text(title)),
        ),
      ),
    );
  }
}
