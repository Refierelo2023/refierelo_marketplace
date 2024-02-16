import 'package:flutter/material.dart';

class PreguntaItem extends StatefulWidget {
  final String title;
  final String content;
  const PreguntaItem({super.key, required this.title, required this.content});

  @override
  State<PreguntaItem> createState() => _PreguntaItemState();
}

class _PreguntaItemState extends State<PreguntaItem> {
  bool _showContent = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
      width: size.width,
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.04, vertical: size.height * 0.005),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.25),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.title, style: const TextStyle(color: Color(0xff00DFEE), fontSize: 14, fontWeight: FontWeight.w400)),
              IconButton
              (
                  onPressed: () {
                    setState(() {
                      _showContent = !_showContent;
                    });
                  },
                  icon: const Icon(Icons.expand_more,
                      color: Colors.white, size: 20)
              )
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
