import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  final TextEditingController controller;
  final Function(String)? onTextChanged;

  const SearchBox({super.key, required this.controller, this.onTextChanged});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.only(left: 0, right: 0),
      width: screenWidth - 1, 
      height: 40, // Ancho del TextField igual al ancho de la pantalla menos los márgenes
      child: TextField(
        controller: controller,
        textAlignVertical: TextAlignVertical.center,
        onChanged: onTextChanged != null ? (text) => onTextChanged!(text) : null,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          fillColor: const Color(0xFFefefef),
          filled: true,
          contentPadding: const EdgeInsets.only(left: 12),
          hintText: "Buscar",
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
            size: 20,
          ),
          hintStyle: const TextStyle(
            fontFamily: "Aileron",
            fontWeight: FontWeight.w400,
            color: Color(0xFF666666),
          ),
        ),
        style: const TextStyle(
          fontFamily: "Aileron",
          fontWeight: FontWeight.w400,
          color: Colors.black, // Cambia el color del texto según tus necesidades
        ),
      ),
    );
  }
}
