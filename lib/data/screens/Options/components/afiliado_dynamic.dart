import 'package:flutter/material.dart';

class AfiliadoDynamic extends StatelessWidget {
  final List<String> aliados;
  const AfiliadoDynamic({super.key, required this.aliados});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.07,
      width: size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff048EC2),
            Color(0xff265E98),
            Color(0xff265C98)
          ]
        )
      ),
      child: SizedBox(
        height: size.height * 0.1,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                for(String aliado in aliados) Image.asset(
                  aliado,
                  width: size.width*0.25,
                  // height: 80,
                )

              ],
            ),
            Positioned(
              right: 0,
              child: IconButton(
                onPressed: () {
                  
                },
                icon: const Icon(Icons.arrow_forward_ios_outlined),
                color: const Color(0xffC0C0C0),
                iconSize: 40,
              ),
            )
          ],
        ),
      ),
    );
  }
}