import 'package:flutter/material.dart';

class BtnRecompensas extends StatelessWidget {
  final String titulo;

  final Function callback;

  const BtnRecompensas({required this.callback, super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.4,
      height: size.height * 0.04,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
              colors: [Color(0xff02B5E7), Color(0xff003366), ])),
      child: TextButton(
          onPressed: ()=>callback(),
          child: Text(
            titulo,
            style: const TextStyle(color: Colors.white, fontSize: 10),
          )),
    );
  }
}
