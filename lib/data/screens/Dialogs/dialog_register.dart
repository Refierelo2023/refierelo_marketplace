import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:refierelo_marketplace/data/screens/Register/components/custom_input.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

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
      insetPadding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
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
                    height: size.height * 0.60,
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
                            const Center(
                              child: CustomFontAileronSemiBoldWhite(
                                text:
                                    '¡ Queremos conocerte mejor \n antes de crear tu cuenta !',
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: size.height * 0.02),
                            CustomInput(
                              placeholder: 'Nombres',
                              // controller: _firstNameController,
                              validator: ValidationBuilder().required().build(),
                            ),
                            SizedBox(height: size.height * 0.02),
                            CustomInput(
                              placeholder: 'Apellidos',
                              // controller: _lastNameController,
                              validator: ValidationBuilder().required().build(),
                            ),
                            // SizedBox(height: size.height * 0.02),
                            // CustomInput(
                            //   placeholder: 'identificación',
                            //   texto: false,
                            //   // controller: identificacion,
                            //   tipo: TextInputType.number,
                            // ),
                            SizedBox(height: size.height * 0.02),
                            CustomInput(
                              placeholder: "Celular",
                              texto: false,
                              tipo: TextInputType.number,
                            ),
                            SizedBox(height: size.height * 0.02),
                            // CustomInput(
                            //   placeholder: 'Mail',
                            //   // controller: _emailController,
                            //   validator: ValidationBuilder().required().build(),
                            // ),
                            // SizedBox(height: size.height * 0.02),
                            // CustomInput(
                            //   placeholder: 'Fecha de Nacimiento',
                            //   // controller: _fechaNacController,
                            //   isDisabled: true,
                            //   tipo: TextInputType.datetime,
                            //   validator: ValidationBuilder().required().build(),
                            //   onTap: (() async {
                            //     var pickedDate = await showDatePicker(
                            //         context: context,
                            //         initialDate: DateTime.now(),
                            //         firstDate: DateTime(1900),
                            //         lastDate: DateTime(2100));
                            //     if (pickedDate != null) {
                            //       setState(() {
                            //         // _fechaNacController.text =
                            //         DateFormat('yyyy-MM-dd').format(pickedDate);
                            //       });
                            //     }
                            //   }),
                            // ),
                            // SizedBox(height: size.height * 0.02),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 5,
                                  child: CustomInput(
                                    placeholder: 'Clave 4 dígitos',
                                    texto: false,
                                    ocultarTexto: true,
                                    
                                    validator:
                                        ValidationBuilder().required().build(),
                                    tipo: TextInputType.number,
                                  ),
                                ),
                                SizedBox(height: size.height * 0.02),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 5,
                                  child: CustomInput(
                                    placeholder: 'Confirmala',
                                    texto: false,
                                    ocultarTexto: true,                                 
                                    validator:
                                        ValidationBuilder().required().build(),
                                    tipo: TextInputType.number,
                                  ),
                                ),
                              ],
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
                                  onTap: (isChecked)
                                      ? widget.pressContinue
                                      : () {},
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
