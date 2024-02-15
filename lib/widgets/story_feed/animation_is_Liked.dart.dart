import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimationIsLiked extends StatefulWidget {
  const AnimationIsLiked({super.key});

  @override
  State<AnimationIsLiked> createState() => _AnimationIsLikedState();
}

class _AnimationIsLikedState extends State<AnimationIsLiked> {
  bool isLiked = false;
  Color iconColor = Colors.white;

  void _handleOnTap() {
    setState(() {
      isLiked = !isLiked;
      iconColor = isLiked ? Colors.red : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleOnTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(4),         
             child: FaIcon(
              FontAwesomeIcons.heart,
              color: iconColor,
              size: 20,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 4),
            child: Text(
              'Me gusta',
              style: TextStyle(
                fontFamily: 'Aileron',
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
