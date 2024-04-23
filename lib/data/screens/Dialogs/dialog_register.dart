import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:refierelo_marketplace/data/screens/Register/components/custom_input.dart';
import 'package:refierelo_marketplace/data/screens/main_screen.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class DialogRegister extends StatefulWidget {
  final VoidCallback pressContinue;
  final UserProfile user;

  const DialogRegister({
    super.key,
    required this.pressContinue,
    required this.user,
  });

  @override
  State<DialogRegister> createState() => _DialogRegisterState();
}

class _DialogRegisterState extends State<DialogRegister> {
  bool isChecked = false;

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  @override
  void initState() {
    super.initState();
    firstNameController.text = widget.user.givenName ?? '';
    lastNameController.text = widget.user.familyName ?? '';
    // Puedes continuar con otros campos según sea necesario
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
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
                    height: size.height * 0.49,
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
                      padding:
                          const EdgeInsets.only(top: 20, left: 10, right: 10),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                text: 'Nos gustaría confirmar tu información\n',
                                style: const CustomFontAileronSemiBoldWhite(
                                  text: "",
                                ).getTextStyle(context),
                                children: [
                                  TextSpan(
                                    text: 'antes de ',
                                    style: const CustomFontAileronSemiBoldWhite(
                                      text: " ",
                                    ).getTextStyle(context),
                                  ),
                                  TextSpan(
                                    text: 'crear tu cuenta',
                                    style: const CustomFontAileronSemiBoldTur(
                                      text: "",
                                    ).getTextStyle(context),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: size.height * 0.02),
                            CustomInput(
                              placeholder: 'Nombres',
                              controller: firstNameController,
                              validator: ValidationBuilder().required().build(),
                            ),
                            SizedBox(height: size.height * 0.02),
                            CustomInput(
                              placeholder: 'Apellidos',
                              controller: lastNameController,
                              validator: ValidationBuilder().required().build(),
                            ),
                            SizedBox(height: size.height * 0.02),
                            CustomInput(
                              placeholder: "Celular",
                              controller: phoneNumberController,
                              texto: false,
                              tipo: TextInputType.number,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15,
                                right: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: 16, // ajusta según sea necesario
                                        height:
                                            16, // ajusta según sea necesario
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          color: Colors.white,
                                        ),
                                        child: Center(
                                          child: Checkbox(
                                            activeColor:
                                                const Color(0xFF7DD218),
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
                                  SizedBox(width: size.width * 0.04),
                                  Column(
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.justify,
                                        text: TextSpan(
                                          text:
                                              '\nAl crear una cuenta aseguras ',
                                          style:
                                              const CustomFontAileronRegularWhite(
                                            text: "",
                                          ).getTextStyle(context),
                                          children: [
                                            TextSpan(
                                              text:
                                                  'haber leído\ny estar de acuerdo',
                                              style:
                                                  const CustomFontAileronRegularWhite(
                                                text: "",
                                              ).getTextStyle(context),
                                            ),
                                            TextSpan(
                                              text: ' con los ',
                                              style:
                                                  const CustomFontAileronRegularWhite(
                                                text: "",
                                              ).getTextStyle(context),
                                            ),
                                            TextSpan(
                                              text: 'Términos y \ncondiciones',
                                              style:
                                                  const CustomFontAileronRegularTur(
                                                text: "",
                                              ).getTextStyle(context),
                                            ),
                                            TextSpan(
                                              text: ' y con la ',
                                              style:
                                                  const CustomFontAileronRegularWhite(
                                                text: " ",
                                              ).getTextStyle(context),
                                            ),
                                            TextSpan(
                                              text: 'Política de\nprivacidad\n',
                                              style:
                                                  const CustomFontAileronRegularTur(
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
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                   {
                                      Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const MainScreen(),
                                        ), 
                                        (route) => false,
                                      );
                                    }
                                  },
                                  child: Material(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: size.width * 0.35,
                                      height: size.height * 0.045,
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          colors: [
                                            Color(0xffCE8F21),
                                            Color(0xffF8E43E)
                                          ],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Continuar',
                                          style:
                                              const CustomFontAileronRegularWhite(
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
