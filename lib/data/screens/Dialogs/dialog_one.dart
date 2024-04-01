import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/constants.dart';
import 'package:refierelo_marketplace/data/screens/Dialogs/dialog_two.dart';


class DialogOne extends StatefulWidget {
  final String idSubproducto;

  const DialogOne({required this.idSubproducto, super.key});

  @override
  State<DialogOne> createState() => _DialogOneState();
}

class _DialogOneState extends State<DialogOne> {
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
        width: size.width * 0.95,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Color(0xff003366), Color(0xff02B5E7)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            borderRadius: BorderRadius.circular(29)),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Image.asset(
                    'assets/images/pop_referir/close.png',
                    // height: size.height * 0.9,
                    width: size.width * 0.08,
                    fit: BoxFit.fitHeight,
                  )),
            ),
            Positioned(
                left: 5,
                bottom: 0,
                child: Image(
                  image: const AssetImage('assets/images/superheroe_mitad.png'),
                  // image: AssetImage('assets/images/pop_referir/super_referente.png'),
                  width: size.width * 0.45,
                )),
            Positioned(
              right: 10,
              top: 50,
              child: SizedBox(
                width: size.width * 0.48,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '¡ Vamos a Referir !',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: size.height * 0.025,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: size.height * 0.05),
                    RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                              text:
                                  'Recuerda debes informarle a tu referido que lo contactaremos por'),
                          const TextSpan(text: ' WhatsApp ', style: TextStyle(color: kLightBlue)),
                          WidgetSpan(
                              child: Image.asset(
                            'assets/images/pop_referir/whatsapp.png',
                            height: 15,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                right: 20,
                bottom: 15,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);

                    showDialog(
                        context: context,
                        builder: (context) {
                          return DialogTwo(
                            idSubproducto: widget.idSubproducto,
                          );
                        }
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: size.width * 0.2),
                  child: const Text(
                  'Continuar',
                  style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline),
                ),
              ),
            )
          )
        ],
      )
    );
  }
}
