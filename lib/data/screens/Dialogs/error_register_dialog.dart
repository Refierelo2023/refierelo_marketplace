import 'package:flutter/material.dart';

class ErrorRegisterDialog extends StatefulWidget {
  const ErrorRegisterDialog({super.key});

  @override
  State<ErrorRegisterDialog> createState() => _ErrorRegisterDialogState();
}

class _ErrorRegisterDialogState extends State<ErrorRegisterDialog>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation<double>? scaleAnimation;

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

    return Material(
        color: Colors.transparent,
        child: ScaleTransition(
            scale: scaleAnimation!,
            child: Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                child: Stack(
                  children: [
                    Image.asset(
                        'assets/images/validacion_bienvenida/error_registro.png'),
                    Positioned(
                      right: 0,
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Image.asset(
                          'assets/images/validacion_bienvenida/close.png',
                          height: size.height * 0.06,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
