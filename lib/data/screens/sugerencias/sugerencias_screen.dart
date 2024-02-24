import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/main.dart';
import 'package:refierelo_marketplace/data/screens/main_screen.dart';
import 'package:refierelo_marketplace/data/screens/sugerencias/input_sugerencia.dart';
import 'package:refierelo_marketplace/data/screens/sugerencias/sugerencias_dropdown.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class SugerenciasScreen extends StatefulWidget {
  const SugerenciasScreen({super.key});

  @override
  State<SugerenciasScreen> createState() => _SugerenciasScreenState();
}

class _SugerenciasScreenState extends State<SugerenciasScreen> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xff003366), Color(0xff02B5E7)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: size.height * 0.01),
                  Center(
                    child: Image.asset(
                      'assets/images/sugerencias/bombillo.png',
                      height: size.height * 0.1,
                      width: size.width * 1,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: " Refiérelo lo construimos entre\n",
                        style: const CustomFontAileronSemiBoldWhite(text: "")
                            .getTextStyle(context)
                            .copyWith(height: 1.5),
                        children: [
                          TextSpan(
                            text: 'todos, déjanos tu ',
                            style:
                                const CustomFontAileronSemiBoldWhite(text: "")
                                    .getTextStyle(context)
                                    .copyWith(height: 1.5),
                          ),
                          TextSpan(
                            text: 'sugerencia',
                            style: const CustomFontAileronSemiBoldTur(text: "")
                                .getTextStyle(context)
                                .copyWith(height: 1.5),
                          ),
                        ]),
                  ),
                  SizedBox(height: size.height * 0.02),
                  InputSugerencia(
                    campo: 'nombre',
                    frase: 'Déjanos tu ',
                    controller: controller,
                  ),
                  SizedBox(height: size.height * 0.02),
                  InputSugerencia(
                    campo: 'mail',
                    frase: 'Déjanos tu ',                    
                    controller: controller,
                  ),
                  SizedBox(height: size.height * 0.02),
                  const SugerenciasDropdown(),
                  SizedBox(height: size.height * 0.02),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text: 'Selecciona un ',
                                style: const CustomFontAileronRegularWhite(
                                        text: "")
                                    .getTextStyle(context)
                                    .copyWith(height: 1.5),
                                children: [
                                  TextSpan(
                                    text: 'Tema',
                                    style: const CustomFontAileronRegularTur(
                                            text: "")
                                        .getTextStyle(context)
                                        .copyWith(height: 1.5),
                                  ),
                                ]),
                          ),
                        ),
                        SizedBox(height: size.height * 0.01),
                        Container(
                          width: size.width * 0.9,
                          height: size.height * 0.15,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: const TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  Container(
                    width: size.width * 0.3,
                    height: size.height * 0.05,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                            colors: [Color(0xffCE8F21), Color(0xffF8E43E)])),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Enviar',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  SizedBox(height: size.height * 0.01),
                ],
              ),
            ),
          ),
        ),
        appBar: AppBar(
          toolbarHeight: 35,
          backgroundColor: const Color(0xff003366),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff003366), Color(0xff02B5E7)],
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            color: const Color(0xFFFFFFFF),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainScreen(), // Ir a LoginScreens
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
