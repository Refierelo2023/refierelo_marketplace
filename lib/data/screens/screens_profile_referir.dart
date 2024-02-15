import 'package:flutter/material.dart';

class ScreenProfileReferir extends StatelessWidget {
  const ScreenProfileReferir({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: const Color(0xFFF5F7F9),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color(0XFF003366),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "50",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Aileron",
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Icon(
                  Icons.favorite_border,
                  color: Color(0xFF003366),
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Image.asset(
                  " ",
                  height: 120,
                  width: 120,
                ), //primera imagen store
              ),
            )
          ]),
        )
      ],
    );
  }
}
