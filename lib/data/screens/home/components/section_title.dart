import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/constants.dart';

class SectionTitle extends StatelessWidget {
  final String? title;

  const SectionTitle({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Text(
            title!,
            style: const TextStyle(
              fontSize: 16,
              color: kSectionTitleColor,
              fontWeight: FontWeight.w700
            ),
          ),
        )
      ],
    );
  }

}