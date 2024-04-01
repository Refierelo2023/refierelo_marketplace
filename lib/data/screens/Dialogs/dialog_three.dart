import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/constants.dart';


class DialogThree extends StatefulWidget {
  const DialogThree({super.key});

  @override
  State<DialogThree> createState() => _DialogThreeState();
}

class _DialogThreeState extends State<DialogThree> {
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
        height: size.height * 0.28,
        padding: EdgeInsets.zero,
        width: size.width*0.95,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Color(0xff003366), Color(0xff02B5E7)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            borderRadius: BorderRadius.circular(29)),
        // clipBehavior: Clip.antiAlias,
        child: Stack(
            children: [
              Positioned(top: 0, right: 0,child: GestureDetector(
                onTap: (() => Navigator.pop(context)),
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
            ),
              Positioned(
              left: 0,
              top: 50,
              child: SizedBox(
                width: size.width * 0.57,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      '¡ Tu referido se registró exitosamente !',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                    ),
                    SizedBox(height: size.height * 0.05),
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        children: [
                          TextSpan(
                              text:
                                  'En segundos nos pondremos en contacto con tu'),
                          TextSpan(text: ' Referido.', style: TextStyle(color: kLightBlue)),
                          // WidgetSpan(
                          //     child: )
                        ],
                      ),
                    ),
                    SizedBox(height: size.height*0.01,),
                    Image.asset(
                         'assets/images/pop_referir/whatsapp.png',
                          height: 18,
                        )
                      ],
                    ),
                  ),
                ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Image(image: const AssetImage('assets/images/pop_referir/super_referente.png'),
            width: size.width*0.47,))
        ],
      ),
    );
  }
}
