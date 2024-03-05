import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';


class AnimationIsLiked extends StatefulWidget {
  const AnimationIsLiked({super.key});

  @override
  State<AnimationIsLiked> createState() => _AnimationIsLikedState();
}

class _AnimationIsLikedState extends State<AnimationIsLiked> {
  bool isHeartIconSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(      
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
              onTap: () {
                setState(() {
                  isHeartIconSelected = !isHeartIconSelected;
                });
              },
              child: Image.asset(
                isHeartIconSelected
                    ? "assets/images/images_icons/heart2.png"
                    : "assets/images/images_icons/heartWhite.png",
                width: 27,
                height: 27,
              ),
            ),
          const Padding(
            padding: EdgeInsets.only(top: 3),
            child: CustomFontAileronRegularWhite(
              text: "Me gusta",
              fontSize: 0.028,
            ),
          ),
        ],
      ),
    );
  }
}
