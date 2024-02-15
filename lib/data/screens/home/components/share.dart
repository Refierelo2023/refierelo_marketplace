import 'package:flutter/material.dart';

class Share extends StatelessWidget {
  const Share({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10, left: 10,),
          child: Container(
            height: size.height * 0.05,
            width: size.width * 0.4,
            margin: EdgeInsets.zero,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xffCE8F21), Color(0xffF8E43E)],
              ),
              borderRadius: BorderRadius.circular(29)
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'COMPARTE Y GANA',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600
                  ),
                )
              ],
            ),
          ), 
        )
      ],
    );
  }

}