import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future<void> onLoading(BuildContext context, {String texto = 'Cargando...', bool dark = true}) {
  double containerWidth = MediaQuery.of(context).size.width * 0.38;
  double containerHeight = 150; // Ajusta la altura según tus necesidades

  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Center(
        child: Container(
          height: containerHeight,
          width: containerWidth,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0), // Ajusta el radio del borde
            ),
            gradient: const LinearGradient(
              colors: [Color(0xff02B5E7), Color(0xff003366)],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/loading/LOADING.gif',
                height: 100,
                width: 100,
              ),
              const SizedBox(height: 0), // Ajusta el espacio entre la imagen y el texto
              Text("  $texto",
              style: const TextStyle(color: Colors.white),
              ),
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
    fontSize: 16.0,
  );
}
