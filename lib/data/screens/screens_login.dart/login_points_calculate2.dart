import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class LoginPointsCalculate2 extends StatefulWidget {
  const LoginPointsCalculate2({super.key});

  @override
  LoginPointsCalculate2State createState() => LoginPointsCalculate2State();
}


// Método para mostrar el mensaje estilo burbuja
void showBubbleMessage(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("¡ Importante !"),
        content: const Text("Estos son los puntos que tu comunidad de Referentes gana cada vez que recomiendan un producto y tu lo vendes, * el 10% Refiérelo lo usa para recompensar las recomendaciones por el canal WhatsApp"),
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

class LoginPointsCalculate2State extends State<LoginPointsCalculate2> {
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
                labelText: 'Recompensa Referente',
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
                  String formattedValue =
                      '\$${NumberFormat.decimalPattern('es').format(double.parse(value))}';
                  double parsedValue = double.tryParse(value) ?? 0;
                  double result = parsedValue / 25;
    
                  double discountedResult = result - (result * 0.1);
    
                  setState(() {
                    displayedValue = discountedResult.toStringAsFixed(0);
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
                          right: 9
                          ,
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
//
class CustomDropdown extends StatelessWidget {
  final String labelText;
  final List<String> items;
  final String? value;
  final ValueChanged<String?>? onChanged;

  const CustomDropdown({
    super.key,
    required this.labelText,
    required this.items,
    this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 5.0),
        child: DropdownButtonFormField<String>(
          value: value,
          onChanged: onChanged,
          decoration: InputDecoration(
            labelText: labelText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Color(0xFF02B5E7)),
            ),
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
          items: items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}