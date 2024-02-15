import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class LoginPointsCalculate extends StatefulWidget {
  const LoginPointsCalculate({super.key});

  @override
  LoginPointsCalculateState createState() => LoginPointsCalculateState();
}

// Método para mostrar el mensaje estilo burbuja
void showBubbleMessage(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("¡ Importante !"),
        content: const Text("Este es el valor en puntos que los usuarios pagaran por tu producto, recuerda que cada punto tiene un valor nóminal de \$25 Cop"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cerrar'),
          ),
        ],
      );
    },
  );
}

class LoginPointsCalculateState extends State<LoginPointsCalculate> {
  final TextEditingController _controller = TextEditingController();
  String displayedValue = '0';
  Color borderColor3 =
      Colors.transparent; // Color inicial del borde del contenedor 3
  Color borderColor4 =
      Colors.transparent; // Color inicial del borde del contenedor 4

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: TextField(
              controller: _controller,
              onTap: () {
                setState(() {
                  borderColor3 = const Color(0xFF02B5E7);
                });
              },
              decoration: InputDecoration(
                labelText: 'Precio de venta (+iva)',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: borderColor3),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Color(0xFF02B5E7)),
                ),
                // fillColor: const Color(0xFFf4f4f4), // de color de fondo
                // filled: true,
                labelStyle: const TextStyle(
                  fontFamily: "Aileron",
                  fontSize: 14,
                  color: Color(0xFF003366),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 15.0,
                ),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  String formattedValue = '\$${NumberFormat.decimalPattern('es').format(double.parse(value))}';
                  double parsedValue = double.tryParse(value) ?? 0;
                  double result = parsedValue / 25;

                  setState(() {
                    displayedValue = '${result.toInt()}';
                    _controller.text = formattedValue;
                  });
                } else {
                  setState(() {
                    displayedValue = '0';
                    _controller
                        .clear(); // Valor predeterminado si el campo está vacío
                  });
                }
              },
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                TextInputFormatter.withFunction((oldValue, newValue) {
                  if (newValue.text.startsWith('\$') &&
                      newValue.text.length > 1) {
                    return oldValue;
                  }
                  return newValue;
                }),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 60, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Align(
                    alignment: Alignment.center,
                    child: CustomFontAileronBold(
                      text: displayedValue,
                     ),
                  ),
                ),
                const SizedBox(width: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Puntos'),
                    GestureDetector(
                      onTap: () {
                        // Llama al método para mostrar el mensaje estilo burbuja
                        showBubbleMessage(context);
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(
                          bottom: 9,
                          right: 9,
                        ),
                        child: Icon(
                          Icons.error, // Icono de alerta
                          color: Color(0xFF003366), // Color del icono
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
