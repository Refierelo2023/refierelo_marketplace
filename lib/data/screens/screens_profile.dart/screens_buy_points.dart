import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_screens.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_screens_categories.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/widget_button.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:refierelo_marketplace/widgets/widget_botton_select.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScreensBuyPoints(),
    );
  }
}

class ScreensBuyPoints extends StatefulWidget {
  const ScreensBuyPoints({super.key});

  @override
  ScreensBuyPointsState createState() => ScreensBuyPointsState();
}

class ScreensBuyPointsState extends State<ScreensBuyPoints> {
  late List<bool> isButtonSelectedList;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                "assets/images/images_login/recompensas2.png",
                height: 50,
                width: 50,
              ),
              const SizedBox(height: 1.0),
              const Align(
                alignment: Alignment.center,
                child: CustomFontAileronBold2(
                  text: "Recompensas",
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: const CustomFontAileronRegular(
                  text:
                      "Recarga los puntos que quieras para recompensar tu comunidad",
                  textAlign: TextAlign.center,
                ),
              ),
                Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: ListView(
                    children: [
                      buildContainer(
                        index: 0,
                        product: ' 1.000   ',
                        subtitle: 'Alcance estimado: 3k - 5k',
                        price: '\$39.667 Cop',
                      ),
                      const SizedBox(height: 10),
                      buildContainer(
                        index: 1,
                        product: ' 25.000 ',
                        subtitle: 'Alcance estimado: 50k - 250k',
                        price: '\$991.900 Cop',
                      ),
                      const SizedBox(height: 10),
                      buildContainer(
                        index: 2,
                        product: ' 50.000 ',
                        subtitle: 'Alcance estimado: 100k - 500k',
                        price: '\$1.983.900 Cop',
                      ),
                      const SizedBox(height: 10),
                      buildContainer(
                        index: 3,
                        product: '100.000',
                        subtitle: 'Alcance estimado: 2M - 15M ',
                        price: '\$3.900.000 Cop',
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: const CustomFontAileronBold(
                              text: "Otro valor >",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          onTap: () {
                            // Agrega la lógica para manejar el toque del InkWell aquí
                          },
                        ),
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
        padding: const EdgeInsets.all(10.0),
        child: WidgetButton(
          press: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const LoginScreensCategories()), // Ir a LoginScreensCategories
          );
        },
           title: "Recargar",
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 40,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      const LoginScreens()), // Ir a LoginScreens
            );
          },
        ),
      ),
    );
  }

  Widget buildContainer({
    required int index,
    required String product,
    required String subtitle,
    required String price,
  }) {
    return Material(
      shadowColor: Colors.black12,
      elevation: 8,
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          selectOnly(
              index); // Llama al método para deseleccionar y seleccionar solo el índice actual
        },
        borderRadius: BorderRadius.circular(20),
        child: Ink(
          decoration: BoxDecoration(
            color: const Color(0xFFffffff),
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
            padding:
                const EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 5),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        // vertical: MediaQuery.of(context).size.height * 0.02, // 3% de la altura de la pantalla
                        horizontal: MediaQuery.of(context).size.width *
                            0.022, // 5% del ancho de la pantalla
                      ),
                      child: CustomFontAileronBold3grey(
                        text: product,
                        fontSize: 0.042,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: const CustomFontAileronRegular(
                        text: "Puntos",
                      ),
                    ),
                  ],
                ),
                // const SizedBox(width: 10),
                Container(
                  height: 50.0,
                  width: 1.5, // Ancho de la línea vertical
                  color: const Color(0xFF666666), // Color de la línea
                ),
                const SizedBox(
                    width:
                        10), // Espacio entre la línea y la columna de "price"
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height *
                              0.02, // 3% de la altura de la pantalla
                          horizontal: MediaQuery.of(context).size.width *
                              0.02, // 5% del ancho de la pantalla
                        ),
                        margin: EdgeInsets.zero,
                        child: CustomFontAileronRegular(
                          text: price,
                          fontSize: 0.042,
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: CustomFontAileronRegular2(
                          text: subtitle,
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height *
                        0.03, // 3% de la altura de la pantalla
                    horizontal: MediaQuery.of(context).size.width *
                        0.03, // 5% del ancho de la pantalla
                  ),
                  child: WidgetBottonSelect(
                    isSelected: isButtonSelectedList[index],
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
