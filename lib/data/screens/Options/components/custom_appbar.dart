import 'package:flutter/material.dart';

class CustomAppbar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final String? subtitle;

  const CustomAppbar({super.key, required this.title, this.subtitle})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon:
            const Icon(Icons.chevron_left, color: Color(0xff003366), size: 40),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10,),
          Text(
            widget.title,
            style: const TextStyle(color: Color(0xff003366)),
          ),
          if(widget.subtitle!=null) Text(
            widget.subtitle!,
            style: const TextStyle(color: Color(0xff003366), fontSize: 12),
          ),
        ],
      ),
      centerTitle: true,
    );
  }
}
