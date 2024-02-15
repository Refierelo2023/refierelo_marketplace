import 'package:flutter/material.dart';

import '../../Dialogs/dialog_one.dart';

class BtnReferir extends StatelessWidget {
  final String idSubproducto;

  const BtnReferir({this.idSubproducto = '', super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return DialogOne(idSubproducto: idSubproducto,);
            });
      },
      child: Container(
        // height: size.height * 0.03,
        // width: size.width * 0.16,
        width: size.width * 0.26,
      height: size.height * 0.035,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Color(0xff02B5E7), Color(0xff003366)]),
            borderRadius: BorderRadius.circular(29)),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Referir',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
