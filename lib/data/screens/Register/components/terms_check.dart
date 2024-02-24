import 'package:flutter/material.dart';

class TermsCheck extends StatefulWidget {
  const TermsCheck({super.key});

  @override
  State<TermsCheck> createState() => _TermsCheckState();
}

class _TermsCheckState extends State<TermsCheck> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return const Color(0xffffffff);
    }

    return Checkbox(
      checkColor: const Color(0xFF003366),
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
