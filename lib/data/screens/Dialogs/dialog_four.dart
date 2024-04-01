import 'package:flutter/material.dart';

class DialogFour extends StatefulWidget {
  const DialogFour({super.key});

  @override
  State<DialogFour> createState() => _DialogFourState();
}

class _DialogFourState extends State<DialogFour> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context, size),
    );
  }

  contentBox(BuildContext context, Size size) {
    return Container(
        height: size.height * 0.3,
        padding: EdgeInsets.zero,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Color(0xff003366), Color(0xff02B5E7)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            borderRadius: BorderRadius.circular(29)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/images/pop_referir/close.png',
                    // height: size.height * 0.9,
                    width: size.width * 0.09,
                    fit: BoxFit.fitHeight,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '¡ Ups !',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    SizedBox(height: size.height*0.03),
                    const Text(
                      'Tu referido no quedo',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'registrado, intentalo',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Nuevamente',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Image.asset(
                  'assets/images/pop_referir/emoji.png',
                width: size.width * 0.5,
                // height: size.height * 0.6,
                fit: BoxFit.fitHeight,
              )
            ],
          )
        ],
      )
    );
  }
}
