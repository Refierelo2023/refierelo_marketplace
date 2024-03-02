import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class CopyClipboard extends StatefulWidget {
  const CopyClipboard({required this.path, super.key});

  final String path;

  @override
  State<CopyClipboard> createState() => _CopyClipboardState();
}

class _CopyClipboardState extends State<CopyClipboard> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height * 0.07,
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      margin: EdgeInsets.symmetric(
          vertical: size.height * 0.01, horizontal: size.width * 0.04),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.23),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: CustomFontAileronRegularWhite(text: widget.path),
          ),
          Container(
            height: size.height * 0.05,
            width: size.width * 0.25,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.bottomCenter,
                   end: Alignment.topCenter,
                    colors: [ Color(0xffCE8F21),Color(0xffF8E43E),]),
                borderRadius: BorderRadius.circular(10)),
            child: TextButton(
              onPressed: () async {
                try {
                  await Clipboard.setData(ClipboardData(text: widget.path));
                  Fluttertoast.showToast(
                      msg: 'Copiado',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.green,
                      textColor: Colors.white,
                      fontSize: 16.0);
                } catch (e) {
                  //error
                }
              },
              child:const CustomFontAileronRegularWhite(text: "Copiar"),
            ),
          ),
        ],
      ),
    );
  }
}
