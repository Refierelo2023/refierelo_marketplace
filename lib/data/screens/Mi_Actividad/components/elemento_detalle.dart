import 'package:flutter/material.dart';

class ElementoDetalle extends StatefulWidget {
  final String puntos;
  final String content;
  final String contacto;
  const ElementoDetalle({super.key, required this.puntos, required this.content, required this.contacto});

  @override
  State<ElementoDetalle> createState() => _ElementoDetalleState();
}

class _ElementoDetalleState extends State<ElementoDetalle> {
  bool _showContent = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
      width: size.width,
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.06, vertical: size.height * 0.005),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.23),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton
                    (
                        onPressed: () {
                          setState(() {
                            _showContent = !_showContent;
                          });
                        },
                        icon: const Icon(Icons.expand_more,
                            color: Colors.white, size: 20)
                    ),
                    Image.asset('assets/images/mi_actividad/2.png', height: size.height * 0.03),
                    SizedBox(width: size.width * 0.01,),
                    Text(widget.contacto, style: const TextStyle(color: Colors.white),)
                ],
              ),
              Text(widget.puntos, style: const TextStyle(color: Color(0xff00DFEE), fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          _showContent
              ? Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.02,
                      vertical: size.height * 0.02),
                  child: Text(
                      widget.content,
                      style: const TextStyle(color: Colors.white)),
                )
              : Container()
        ],
      ),
    );
  }
}