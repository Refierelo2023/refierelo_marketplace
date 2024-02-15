import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class InputSugerencia extends StatelessWidget {
  final String frase;
  final String campo;
  final TextEditingController controller;
  final dynamic validator;
  final TextInputType keyBoardType;
  final FocusNode? focusNode;
  const InputSugerencia({super.key, required this.campo, required this.frase, required this.controller, this.validator, this.focusNode, this.keyBoardType = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: RichText(
              textAlign: TextAlign.center,
              text:  TextSpan(
                  text: frase,
                  style: const CustomFontAileronRegularWhite(
                        text: "").getTextStyle(context).copyWith(height: 1.5),
                  children: [
                    TextSpan(
                      text: campo,
                      style: const CustomFontAileronRegularTur(
                        text: "").getTextStyle(context).copyWith(height: 1.5),
                    ),
                  ]),
            ),
          ),
          SizedBox(height: size.height * 0.01),
          Container(
            width: size.width * 0.9,
            height: size.height * 0.06,
            padding: const EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              controller: controller,
              focusNode: focusNode,
              validator: validator,
              keyboardType: keyBoardType,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(border: InputBorder.none),
            ),
          )
        ],
      ),
    );
  }
}
