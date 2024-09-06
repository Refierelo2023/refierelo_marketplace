import 'package:flutter/material.dart';

class CircleStory extends StatelessWidget {
  const CircleStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        height: 70,
        width: 70,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              Color(0xFF19D3FC), // Color en la parte inferior del borde
              Color(0xFF0D50A0), // Color en la parte superior del borde
            ],
          ),
        ),
        child: ClipOval(
          child: Image.network(
            "https://i.postimg.cc/yxn8rhXj/Captura-de-Pantalla-2024-08-28-a-la-s-2-29-21-a-m.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
