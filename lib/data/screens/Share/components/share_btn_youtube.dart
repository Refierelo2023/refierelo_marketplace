import 'package:flutter/material.dart';

class ShareBtnYoutube extends StatelessWidget {
  final String title;
  final String img;
  const ShareBtnYoutube({super.key, required this.title, required this.img});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.4,
      height: size.height * 0.05,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
                  begin: Alignment.bottomCenter,
                   end: Alignment.topCenter,
                    colors: [ Color(0xffCE8F21),Color(0xffF8E43E),]),
          borderRadius: BorderRadius.circular(10)),
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
