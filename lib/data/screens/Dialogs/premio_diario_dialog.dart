import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/constants.dart';


class PremioDiarioDialog extends StatefulWidget {
  const PremioDiarioDialog({super.key, required this.fecha, required this.texto, required this.textoColor, required this.textoNegrita});

  final String textoNegrita;
  final String texto;
  final String textoColor;
  final String fecha;

  @override
  State<PremioDiarioDialog> createState() => _PremioDiarioDialogState();
}

class _PremioDiarioDialogState extends State<PremioDiarioDialog>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation<double>? scaleAnimation;
  TextEditingController msisdnRecomendado = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    scaleAnimation =
        CurvedAnimation(parent: controller!, curve: Curves.elasticInOut);

    controller?.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });

    controller?.forward();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation!,
          child: Container(
              width: size.width*0.9,
              height: size.height * 0.46,
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  gradient: const LinearGradient(
                      colors: [Color(0xff02B5E7), Color(0xff003366)])),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Positioned(
                    left: 0,
                    child: Image.asset(
                      'assets/images/validacion_bienvenida/personaje.png',
                      height: size.height * 0.4,
                    ),
                  ),
                  Positioned(
                    top: 4,
                    right: 20,
                    child: Image.asset(
                      'assets/images/validacion_bienvenida/2.png',
                      // height: size.height * 0.25,
                      width: size.width * 0.53,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Positioned(
                    top: size.height * 0.23,
                    right: size.width * 0.05,
                    child: SizedBox(
                      width: size.width*0.5,
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                             Text(widget.textoNegrita, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                      Text(widget.texto, style: const TextStyle(color: Colors.white), textAlign: TextAlign.center),
                      Text(widget.textoColor, style: const TextStyle(color: kLightBlue), textAlign: TextAlign.center),
                      ],),)
                  ),
                  Positioned(
                      bottom: 15,
                      right: 24,
                      child: GestureDetector(
                        onTap: (() => Navigator.pop(context)),
                        child: const Text(
                          'Omitir',
                          style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline),
                        ),
                      )),
                  const Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(padding: EdgeInsets.only(bottom: 6), child: Text(
                          'Aplican términos y condiciones vigentes',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                              decoration: TextDecoration.underline),
                              textAlign: TextAlign.center,
                        ),),),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: GestureDetector(
                      onTap: (() => Navigator.pop(context)),
                      child: Image.asset(
                        'assets/images/validacion_bienvenida/close.png',
                        height: size.height * 0.04,
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
