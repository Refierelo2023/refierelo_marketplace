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
                    Image.asset('assets/images/pop_error/pop_error.png'),
                    Positioned(
                      top: -0,
                      right: 2,
                      child: ClipOval(
                        child: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            margin: const EdgeInsets.all(0),
                            padding: const EdgeInsets.all(6),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          child: const Icon(
                          Icons.close_rounded,
                          size: 20,
                          color: Color(0xff003366),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      )
    );
  }
}
