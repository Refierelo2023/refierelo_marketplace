import 'package:flutter/material.dart';

class ShareBtn extends StatelessWidget {
  final String title;
  final String img;
  const ShareBtn({super.key, required this.title, required this.img});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.42,
      height: size.height * 0.05,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Color(0xff003366), Color(0xff02B5E7)]),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w500)
          ),
          SizedBox(width: size.width * 0.02,),
          Image.asset(img, height: size.height * 0.03)
        ],
      ),
    );
  }
}
