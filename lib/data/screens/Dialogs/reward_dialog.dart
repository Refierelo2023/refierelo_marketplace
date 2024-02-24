import 'package:flutter/material.dart';

class RewardDialog extends StatefulWidget {
  const RewardDialog({required this.puntos, super.key});

  final String puntos;

  @override
  State<RewardDialog> createState() => _RewardDialogState();
}

class _RewardDialogState extends State<RewardDialog>
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
                    Image.asset('assets/images/pop_reward/Reward.png'),
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
                    Positioned(
                      top: size.height * 0.34,
                      right: size.width * 0.24,
                      left: size.width * 0.24,
                      child: Container(
                        width: size.width * 0.06,
                        height: size.height * 0.04,
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            color: Colors.white),
                        child: Center(
                            child: Text(
                          '${widget.puntos} puntos',
                          style: const TextStyle(color: Color(0xff00DFEE)),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
