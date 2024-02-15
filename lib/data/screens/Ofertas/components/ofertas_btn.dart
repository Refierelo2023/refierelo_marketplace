import 'package:flutter/material.dart';

class OfertasBtn extends StatelessWidget {
  final String title;
  const OfertasBtn({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.3,
      height: size.height * 0.04,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Color(0xff003366), Color(0xff02B5E7)]),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}
