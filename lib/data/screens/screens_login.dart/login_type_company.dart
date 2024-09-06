import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/otp/components/btn_next.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_screens.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_screens_categories.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:refierelo_marketplace/widgets/widget_botton_select.dart';
import 'package:http/http.dart' as http;

class LoginTypeCompany extends StatefulWidget {
  const LoginTypeCompany({super.key});

  @override
  LoginTypeCompanyState createState() => LoginTypeCompanyState();
}

class LoginTypeCompanyState extends State<LoginTypeCompany> {
  late List<bool> isButtonSelectedList;

   List<String> palabras = [
    'microemprendimientos',
    'pequeña empresa',
    'Mediana empresa',
    'gran empresa',
  ];  

  @override
  void initState() {
    super.initState();
    isButtonSelectedList = List.generate(4, (index) => false);
  }

  void selectOnly(int index) {
    setState(() {
      for (int i = 0; i < isButtonSelectedList.length; i++) {
        isButtonSelectedList[i] = (i == index);
      }
    });
  }

  // void enviarWebhook(int selectedIndex) {    
  //   if (selectedIndex >= 0 && selectedIndex < palabras.length) {
  //     final url = Uri.parse("http://5.189.161.131:5000/webhook");
  //     final data = {'TipoEmpresa': palabras[selectedIndex]};

  //     http.post(url, body: data).then((respuesta) {
  //       if (respuesta.statusCode == 200) {
  //         print('Webhook enviado con éxito');
  //       } else {
  //         print('Error al enviar el webhook: ${respuesta.statusCode}');
  //       }
  //     }).catchError((error) {
  //       print('Error al enviar el webhook: $error');
  //     });
  //   } else {
  //     print('Error: Índice fuera de rango');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 1.0),
              const Align(
                alignment: Alignment.center,
                child: CustomFontAileronBold2(
                  text: "Selecciona el tipo de empresa",
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView(
                    children: [
                      buildContainer(
                        index: 0,
                        title: 'Microemprendimientos',
                        subtitle: '1 - 10 colaboradores',
                        paragraph:'Ideal para hacer crecer tu negocio de forma exponencial',
                      ),
                      const SizedBox(height: 10),
                      buildContainer(
                        index: 1,
                        title: 'Pequeña Empresa',
                        subtitle: '11 - 50 colaboradores',
                        paragraph:'Diseñada para crear comunidades sólidas que impulsen las ventas ',
                      ),
                      const SizedBox(height: 10),
                      buildContainer(
                        index: 2,
                        title: 'Mediana Empresa',
                        subtitle: '51 - 200 colaboradores',
                        paragraph:'Excelente para disminuir costos, consolidar y aumentar las ventas',
                      ),
                      const SizedBox(height: 10),
                      buildContainer(
                        index: 3,
                        title: 'Gran Empresa',
                        subtitle: 'Más de 200 colaboradores',
                        paragraph:'Reduce el CAC, identifica a tus embajadores de marca y crea una comunidad que recomiende tus productos',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: BtnNext(
          press: () {          
          int selectedIndex = -1;
          for (int i = 0; i < isButtonSelectedList.length; i++) {
            if (isButtonSelectedList[i]) {
              selectedIndex = i;
              break;
            }
          }
          if (selectedIndex != -1) {
            // enviarWebhook(selectedIndex);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreensCategories()), // Ir a LoginScreensCategories
        );
        } else {
          print('Error: Ningún tipo de empresa seleccionado');

        }


      }, 
      title: "Continuar")
    ),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreens()), // Ir a LoginScreens
            );
          },
        ),
      ),
    );
  }

  Widget buildContainer({
    required int index,
    required String title,
    required String subtitle,
    required String paragraph,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          selectOnly(index); // Llama al método para deseleccionar y seleccionar solo el índice actual
        },
        borderRadius: BorderRadius.circular(20),
        child: Ink(
          decoration: BoxDecoration(
            color: const Color(0xFFF4F4F4),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.0),
                spreadRadius: 0,
                blurRadius: 20,
                offset: const Offset(0, 0), // changes position of shadow
              ),
            ],
            border: Border.all(
              color: isButtonSelectedList[index]
                  ? const Color(0xFF02b5e7)
                  : const Color(0xFFF1F1F1),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 6),
            child: Stack(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomFontAileronBold(
                            text: title,
                          ),
                          CustomFontAileronRegular2(
                            text: subtitle,
                          ),
                          const SizedBox(height: 4.0),
                          RichText(
                            textAlign: TextAlign.start,
                            text: TextSpan(
                              text: paragraph,
                              style: const TextStyle(
                                color: Color(0xFF003366),
                                fontFamily: "Aileron",
                                fontSize: 14.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  right: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      WidgetBottonSelect(
                        isSelected: isButtonSelectedList[index],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } 
}
