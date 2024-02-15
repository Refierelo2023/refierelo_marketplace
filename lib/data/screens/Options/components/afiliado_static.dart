import 'package:flutter/material.dart';

class AfiliadoStatic extends StatelessWidget {
  const AfiliadoStatic({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: double.infinity,
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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/refiere_aqui/libranzas/excel.png',
                  height: 100,
                  width: 150,
                ),
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