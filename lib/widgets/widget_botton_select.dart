import 'package:flutter/material.dart';

class WidgetBottonSelect extends StatefulWidget {
  const WidgetBottonSelect({super.key, required this.isSelected});
  final bool isSelected;

  @override
  WidgetBottonSelectState createState() => WidgetBottonSelectState();
}

class WidgetBottonSelectState extends State<WidgetBottonSelect> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          // Lógica para cambiar el estado del botón
        });
      },
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: widget.isSelected
                ? Colors.transparent
                : const Color(0XFF666666),
            width: 2,
          ),
          color:
              widget.isSelected ? const Color(0xFF02b5e7) : Colors.transparent,
        ),
        child: widget.isSelected
            ? const Icon(
                Icons.check,
                color: Colors.white,
                size: 17,
              )
            : null,
      ),
    );
  }
}

class WidgetBottonSelectGreen extends StatelessWidget {
  final bool isSelected;
  final VoidCallback? onTap;

  const WidgetBottonSelectGreen({
    super.key, 
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 22,
        height: 22,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: isSelected ? Colors.transparent : const Color(0XFF666666),
            width: 2,
          ),
          gradient: isSelected
              ? const LinearGradient(
                  colors: [Color(0xFF7DD218), Color(0xFF28AB0B)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : null,
        ),
        child: isSelected
            ? const Icon(
                Icons.check,
                color: Colors.white,
                size: 17,
              )
            : null,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('Botón Selección')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WidgetBottonSelect(
              isSelected: false,
            ),
            SizedBox(height: 20),
            WidgetBottonSelectGreen(
              isSelected: false,
            ),
          ],
        ),
      ),
    ),
  ));
}
