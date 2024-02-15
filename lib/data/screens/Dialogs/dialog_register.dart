import 'package:flutter/material.dart';

class DialogRegister extends StatefulWidget {
  final VoidCallback pressContinue;
  const DialogRegister({super.key, required this.pressContinue});

  @override
  State<DialogRegister> createState() => _DialogRegisterState();
}

class _DialogRegisterState extends State<DialogRegister> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Container(
        height: size.height * 0.2,
        width: size.width,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [Color(0xff003366), Color(0xff02B5E7)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
          ),
          borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Theme(
                      data: Theme.of(context).copyWith(
                        unselectedWidgetColor: Colors.white
                      ),
                      child: Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                        setState(() {
                          isChecked = !isChecked;
                        });
                      }
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    RichText(
                      textAlign: TextAlign.justify,
                      text: const TextSpan( text: 'Al crear una cuenta aseguras haber\n', style: TextStyle(fontSize: 15),
                      children: [
                        TextSpan(text: 'leído y estar de acuerdo con los\n'),
                        TextSpan(text: 'Términos y condiciones', style: TextStyle(color: Color(0xff00DFEE), fontSize: 15)),
                        TextSpan(text: ' y con la \n', style: TextStyle(fontSize: 15)),
                        TextSpan(text: 'Política de privacidad', style: TextStyle(color: Color(0xff00DFEE), fontSize: 15)),
                      ]
                    ))
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (isChecked) ? widget.pressContinue : (){},
                  child: Material(
                    elevation: 2,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: size.width * 0.25,
                      height: size.height * 0.04,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [Color(0xff003366), Color(0xff02B5E7)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Center(child: Text('Continuar', style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 2,
                    child: Container(
                      width: size.width * 0.25,
                      height: size.height * 0.04,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [Color(0xff003366), Color(0xff02B5E7)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Center(child: Text('Rechazar', style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                )
              ]
            )
          ],
        ),
      ),
    );
  }
}