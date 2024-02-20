import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class CustomInput extends StatefulWidget {
  final String placeholder;
  final TextEditingController? controller;
  final Widget? title;
  bool texto;
  bool ocultarTexto;
  bool isDisabled;
  bool rounded;
  TextInputType? tipo;
  Function()? onTap;
  dynamic validator;
  Color colorTitle;
  Alignment alignTitle;
  bool showTitle;
  FocusNode? focusNode;

  
  

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
      this.alignTitle= Alignment.centerLeft,
      this.showTitle=true,
      this.focusNode
 

      });

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  bool isObscure = true;

TextEditingController? _textEditingController;

@override
void initState() {
  super.initState();
  _textEditingController = widget.controller ?? TextEditingController();}


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        if(widget.showTitle) Column(
          children: [
          Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
          child: Align(
              alignment: widget.alignTitle,
              child: widget.title,              
          ),
        ),
        SizedBox(
          height: size.height * 0.004,
        ),
        ],),
        Container(
          // width: size.width * 1,
          // height: size.height * 0.05,
          // constraints: BoxConstraints(maxHeight: size.height * 0.065),
          // decoration: BoxDecoration(
          //     color: Colors.white, borderRadius: widget.rounded?BorderRadius.circular(10):null),
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
          child: TextFormField(
            readOnly: widget.isDisabled,
            controller: _textEditingController,
            textAlign: TextAlign.justify,
            keyboardType: widget.tipo,
            validator: widget.validator,
            focusNode: widget.focusNode,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            inputFormatters: [FilteringTextInputFormatter.deny(RegExp(r'^[ ]'))],           
            decoration: InputDecoration(
                hintText: widget.placeholder,
                labelText: widget.placeholder,
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.all(10),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
        borderRadius: widget.rounded?BorderRadius.circular(15.0):BorderRadius.zero,
      ),
      hintStyle: const TextStyle(color: Color(0xFFffffff)),
      focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFF02b5e7), width: 2),
        borderRadius: widget.rounded?BorderRadius.circular(15.0):BorderRadius.zero,
      ),
                // border: 
                // border: InputBorder.none,
                errorBorder: OutlineInputBorder(
                  borderRadius: widget.rounded
                  ?BorderRadius.circular(10.0)
                  :BorderRadius.zero,
                  borderSide: const BorderSide(color: Colors.red)
                ),                
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: widget.rounded
                  ? BorderRadius.circular(15.0)
                  :BorderRadius.zero,
                  borderSide: const BorderSide(color: Colors.red),
                ),
                  prefixIcon: (widget.ocultarTexto==true)
                  ? IconButton(
                    icon: Icon(
                        isObscure
                         ? Icons.visibility : 
                         Icons.visibility_off, color: const Color(0xFF003366),
                    ),
                    onPressed: ()=> setState(()=>isObscure = !isObscure),
                    )
                  :null
                ),                
            style: const TextStyle(fontSize: 14),
            cursorColor: const Color(0xFFFFFFFF),
            // obscureText: widget.ocultarTexto == true && isObscure==true,
            onTap: () {
            if (widget.texto) {
              // Borra el texto cuando se selecciona el campo
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
