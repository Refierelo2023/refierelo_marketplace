import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class AfiliadoDynamic2 extends StatefulWidget {

  final List<String> aliados;
  final bool remote;
  const AfiliadoDynamic2({this.remote = false, super.key, required this.aliados});

  @override
  State<AfiliadoDynamic2> createState() => _AfiliadoDynamic2State();
}

class _AfiliadoDynamic2State extends State<AfiliadoDynamic2> {


  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.06,
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 11.5),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff048EC2),
            Color(0xff265E98),
            Color(0xff265C98)
          ]
        )
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
        RawScrollbar(
                    controller: scrollController,
                    thumbColor: Colors.transparent,
                    radius: const Radius.circular(20),
                    thumbVisibility: false,
                    child: ListView(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        children: [
          for(String aliado in widget.aliados) Padding(padding: const EdgeInsets.symmetric(horizontal: 3), 
          child: 
          (widget.remote == false)? Image.asset(
                  aliado,
                  // width: size.width*0.25,
                  // height: 80,
                ):
          CachedNetworkImage(imageUrl: aliado)
                )
        ])),
        Positioned(
              right: -14,
              child: IconButton(
                onPressed: () {
                  scrollController.jumpTo(scrollController.position.pixels+22);
                },
                icon: const Icon(Icons.arrow_forward_ios_outlined),
                color: const Color(0xffC0C0C0),
                iconSize: 30,
              ),
            )
      ]),
    );
  }
}