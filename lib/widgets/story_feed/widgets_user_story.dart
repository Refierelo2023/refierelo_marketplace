import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class WidgetsUserStory extends StatefulWidget {
  const WidgetsUserStory({
    super.key,
    required this.index,
    required this.setRectPoint,
    required this.onStoryItemTap,
  });

  final int index;
  final Function(Rect?) setRectPoint;
  final Function(Rect?, int) onStoryItemTap;

  @override
  State<WidgetsUserStory> createState() => _WidgetsUserStoryState();
}

class _WidgetsUserStoryState extends State<WidgetsUserStory>
    with TickerProviderStateMixin {
  //variables
  late Animation<double> gap;
  late Animation<double> base;
  late Animation<double> reverse;
  AnimationController? animationController;
  Rect? rect;
  GlobalKey touchPoint = GlobalKey();

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 15));
    base = CurvedAnimation(parent: animationController!, curve: Curves.easeOut);
    reverse = Tween<double>(begin: 0.0, end: -1.0).animate(base)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 100,
        height: 100,
        child: Stack(
          alignment: Alignment.center,
          children: [
            const CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  "https://i.postimg.cc/pTQjR6tJ/Captura-de-Pantalla-2024-08-28-a-la-s-2-29-21-a-m.png"),
            ),
            // diseño story Circulo degradado/////////////////////////
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: GestureDetector(
                key: touchPoint,
                behavior: HitTestBehavior.opaque,
                onTapUp: (detalis) {
                  RenderBox renderBox = touchPoint.currentContext!
                      .findRenderObject() as RenderBox;
                  Offset localPosition =
                      renderBox.globalToLocal(detalis.globalPosition);
                  final size = renderBox.size;
                  rect = Rect.fromLTWH(localPosition.dx, localPosition.dy,
                      size.width, size.height);
                  widget.setRectPoint(rect);
                },
                child: const SizedBox(
                  width: 70,
                  height: 70,
                  child: SimpleCircularProgressBar(
                    fullProgressGradient: SweepGradient(
                      tileMode: TileMode.decal,
                      colors: [
                        Color(0xFF02b5e7),
                        Color(0xFF003366),
                        Color(0xFF02b5e7),
                      ],
                    ),
                    size: 70,
                    progressStrokeWidth: 4,
                    backColor: Colors.white,
                    animationDuration: 1,
                    maxValue: 100,
                  ),
                ),
              ),
            )
          ],
        )
      );
  }
}
