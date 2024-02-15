import 'package:flutter/material.dart';

class CategoriaRecompensaItem extends StatefulWidget {
  final String title;
  final String content;
  final String img;

  const CategoriaRecompensaItem({super.key, required this.title, required this.content, required this.img});

  @override
  State<CategoriaRecompensaItem> createState() => _CategoriaRecompensaItemState();
}

class _CategoriaRecompensaItemState extends State<CategoriaRecompensaItem> {
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
              Row(
                children: [
                  ImageIcon(AssetImage(widget.img), color: Colors.white,),
                  SizedBox(width: size.width * 0.02),
                  Text(widget.title, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400)),
                ],
              ),
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