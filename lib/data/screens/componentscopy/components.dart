import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


Future<void> onLoading(BuildContext context,
    {String texto = 'Cargando...', bool dark = true}) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Dialog(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircularProgressIndicator(),
              Text("  $texto"),
            ],
          ),
        ),
      );
    },
  );
}

void toast(String msg, Color color, {Color textColor = Colors.white}) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: color,
      textColor: textColor,
      fontSize: 16.0);
}
