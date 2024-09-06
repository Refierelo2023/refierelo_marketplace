import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

// ignore: must_be_immutable
class CustomInput extends StatefulWidget {
  final String placeholder;
  final TextEditingController? controller;
  final Widget? title;
  final bool texto;
  final bool ocultarTexto;
  final bool isDisabled;
  final bool rounded;
  final TextInputType? tipo;
  final Function()? onTap;
  final dynamic validator;
  final Color colorTitle;
  final Alignment alignTitle;
  final bool showTitle;
  final FocusNode? focusNode;

  CustomInput(
      {super.key,
      this.placeholder = '',
      this.title,
      this.texto = true,
      this.ocultarTexto = false,
      this.isDisabled = false,
      this.controller,
      this.tipo = TextInputType.text,
      this.onTap,
      this.validator,
      this.rounded = true,
      this.colorTitle = const Color(0xFF666666),
      this.alignTitle = Alignment.centerLeft,
      this.showTitle = true,
      this.focusNode});

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  bool isObscure = true;

  TextEditingController? _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = widget.controller ?? TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        if (widget.showTitle)
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Align(
                  alignment: widget.alignTitle,
                  child: widget.title,
                ),
              ),
              SizedBox(height: size.height * 0.004),
            ],
          ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: TextFormField(
            readOnly: widget.isDisabled,            
            controller: _textEditingController,
            textAlign: TextAlign.justify,
            keyboardType: widget.tipo,
            validator: widget.validator,
            focusNode: widget.focusNode,            
            autovalidateMode: AutovalidateMode.onUserInteraction,
            inputFormatters: [
               FilteringTextInputFormatter.deny(RegExp(r'^[ ]'))              
            ],
            obscureText: widget.ocultarTexto == true && isObscure,
            decoration: InputDecoration(
                hintText: widget.placeholder,                
                labelText: widget.placeholder,
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.all(10),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                hintStyle: const TextStyle(color: Color(0xFFffffff)),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFF02b5e7), width: 1),
                  borderRadius:BorderRadius.circular(15.0),
                ),
                labelStyle: CustomFontAileronRegular(
                  text: widget.placeholder,
                  ).getTextStyle(context),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.red)),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: const BorderSide(color: Colors.red),
                ),
                prefixIcon: (widget.ocultarTexto == true)
                    ? IconButton(
                        icon: Icon(
                          isObscure ? Icons.visibility_off : Icons.visibility,
                          color: const Color(0xFF666666),                          
                        ),
                        onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      )
                    : null,
                     floatingLabelBehavior: FloatingLabelBehavior.never, 
                  ),
            style: const TextStyle(fontSize: 14),
            cursorColor: const Color(0xFFFFFFFF),
            onTap: () {
              if (widget.texto) {
                _textEditingController!.clear();
              }
              widget.onTap?.call();
            },
          ),
        )
      ],
    );
  }
}
