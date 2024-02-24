import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class DialogRegister extends StatefulWidget {
  final VoidCallback pressContinue;

  const DialogRegister({Key? key, required this.pressContinue}) : super(key: key);

  @override
  State<DialogRegister> createState() => _DialogRegisterState();
}

class _DialogRegisterState extends State<DialogRegister> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: size.width * 0.07),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),              
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    height: size.height * 0.24,
                    width: size.width,
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xff003366), Color(0xff02B5E7)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),                    
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 16, // ajusta según sea necesario
                              height: 16, // ajusta según sea necesario
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Checkbox(
                                  activeColor: const Color(0xFF7DD218),
                                  checkColor: Colors.white,
                                  value: isChecked,
                                  onChanged: (value) {
                                    setState(() {
                                      isChecked = !isChecked;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),                      
                        SizedBox(width: size.width *0.03),
                              Column(
                                children: [
                                  RichText(
                                    textAlign: TextAlign.justify,
                                    text: TextSpan(
                                      text: '\nAl crear una cuenta aseguras\n',
                                      style: const CustomFontAileronRegularWhite(
                                        text: "",
                                      ).getTextStyle(context),
                                      children: [
                                        TextSpan(
                                          text: 'haber leído y estar de acuerdo\n',
                                          style: const CustomFontAileronRegularWhite(
                                            text: "",
                                          ).getTextStyle(context),
                                        ),
                                        TextSpan(
                                          text: 'con los ',
                                          style: const CustomFontAileronRegularWhite(
                                            text: "",
                                          ).getTextStyle(context),
                                        ),
                                        TextSpan(
                                          text: 'Términos y condiciones\n',
                                          style: const CustomFontAileronRegularTur(
                                            text: "",
                                          ).getTextStyle(context),
                                        ),
                                        TextSpan(
                                          text: 'y con la ',
                                          style: const CustomFontAileronRegularWhite(
                                            text: " ",
                                          ).getTextStyle(context),
                                        ),
                                        TextSpan(
                                          text: 'Política de privacidad\n',
                                          style: const CustomFontAileronRegularTur(
                                            text: "",
                                          ).getTextStyle(context),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: (isChecked) ? widget.pressContinue : () {},
                                child: Material(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    width: size.width * 0.35,
                                    height: size.height * 0.045,
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        colors: [Color(0xffCE8F21), Color(0xffF8E43E)],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Continuar',
                                        style: const CustomFontAileronRegularWhite(
                                          text: " ",
                                        ).getTextStyle(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: size.height * 0.01),
                        ],
                      ),
                    ),
                  ),                  
                ],
              ),
            ),
          ),
          Positioned(
                  top: 0,
                  right: 0,
                  child: ClipOval(
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(6),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.close_rounded,
                          size: 20,
                          color: Color(0xff003366),
                        ),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}

