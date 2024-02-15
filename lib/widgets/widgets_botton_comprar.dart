import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:refierelo_marketplace/widgets/widget_botton_counter.dart';
import 'package:refierelo_marketplace/widgets/widget_botton_pagar.dart';
import 'package:refierelo_marketplace/widgets/widget_botton_select.dart';

class WidgetBottonComprar extends StatelessWidget {
  const WidgetBottonComprar({super.key});

  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width *
        0.25; // El 25% del ancho del dispositivo
    double buttonPaddingHorizontalPercentage = 0.015;

    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return const WidgetDisplayComprar();
          },
        );
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: FractionallySizedBox(
          widthFactor: 0.8,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0,
            ),
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.width *
                  buttonPaddingHorizontalPercentage,
              horizontal: MediaQuery.of(context).size.width *
                  buttonPaddingHorizontalPercentage,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color(0xFFce8f21),
                  Color(0xFFf8e43e),
                ],
              ),
            ),
            child: SizedBox(
              width: buttonWidth, // Ancho del botón
              child: const Text(
                'Comprar',
                style: TextStyle(
                  fontFamily: 'Aileron',
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class WidgetDisplayComprar extends StatefulWidget {
  const WidgetDisplayComprar({super.key});

  @override
  WidgetDisplayComprarState createState() => WidgetDisplayComprarState();
}

class WidgetDisplayComprarState extends State<WidgetDisplayComprar> {
  late List<bool> isButtonSelectedList;
  late IconData _selectedIcon = Icons.add;
  bool _isVisible = false;
  int selectedIndex = 0;
  int counterValue = 0;
  int _currentPage = 0;

// Indicadores para puntos y precio
  TextEditingController pointsController = TextEditingController();
  String pointsIndicator = '';
  String priceIndicator = '';

  @override
  void initState() {
    super.initState();
    isButtonSelectedList = List.generate(3, (index) => false);
    pointsController.text = '1.200';
    selectOnly(0);
  }

  final List<String> imagePaths = [
    'assets/images/images_display_comprar.dart/black3.jpeg',
    'assets/images/images_display_comprar.dart/black1.jpeg',
    'assets/images/images_display_comprar.dart/black2.jpeg',
    'assets/images/images_display_comprar.dart/black4.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    int pageCount =
        imagePaths.length; // Obtener el número de páginas (imágenes)
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.55,
                    width: double.infinity, // Ancho del carrusel
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        PageView.builder(
                          itemCount: pageCount,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(0),
                              child: Image.asset(
                                imagePaths[index],
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                          onPageChanged: (int page) {
                            setState(() {
                              _currentPage = page;
                            });
                          },
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 9),
                          height: 4, // Altura de la línea
                          decoration: const BoxDecoration(
                            color: Color(0xFFffffff), // Color de la línea
                            borderRadius: BorderRadius.all(
                                Radius.circular(20)), // Bordes redondeados
                          ),
                          width: MediaQuery.of(context).size.width *
                              0.13, // Ancho de la línea
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 2),
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  color: Color(0X80666666),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    for (var indicator
                                        in _buildPageIndicator(pageCount))
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 3.0),
                                        child: indicator,
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 7),
                      child: CustomFontAileronBold2(
                        text: "\$30.000",
                        fontSize: 0.055,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 7),
                      child: Expanded(
                        child: CustomFontAileronBold2(
                          text: "Tarjeta Black",
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                  ],
                ),
                // const Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     Padding(
                //       padding: EdgeInsets.only(left: 7),
                //       child: FittedBox(
                //         fit: BoxFit.scaleDown,
                //         child: CustomFontAileronBold(
                //           text: "Redime con:",
                //         ),
                //       ),
                //     ),
                //     SizedBox(width: 5),
                //     FittedBox(
                //       fit: BoxFit.scaleDown,
                //       child: CustomFontAileronBold(
                //         text: "1.200",
                //       ),
                //     ),
                //     SizedBox(width: 5),
                //     FittedBox(
                //       fit: BoxFit.scaleDown,
                //       child: CustomFontAileronBold(
                //         text: "Puntos",
                //       ),
                //     ),
                //   ],
                // ),
                const SizedBox(height: 10),
                const Center(
                  child: CustomFontAileronBold(
                    text: "¿ Como deseas hacer tu compra?",
                    textAlign: TextAlign.center,
                  ),
                ),
            
                // const Padding(
                //   padding: EdgeInsets.all(5.0),
                //   child: CustomFontAileronRegular(
                //     text:
                //         "Olvídate de largas filas y vive una experiencia preferencial llévate tu tarjeta cineco Black y obten atención exclusiva",
                //     textAlign: TextAlign.justify,
                //     maxLines: 2,
                //   ),
                // ),
                 const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                selectOnly(0);
                              },
                              child: const CustomFontAileronRegular(
                                text: "Puntos Refiérelo",
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            WidgetBottonSelectGreen(
                              isSelected: isButtonSelectedList[0],
                              onTap: () {
                                selectOnly(0);
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                selectOnly(1);
                              },
                              child: const CustomFontAileronRegular(
                                text: "Solo con dinero",
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            WidgetBottonSelectGreen(
                                isSelected: isButtonSelectedList[1],
                                onTap: () {
                                  selectOnly(1);
                                }),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                selectOnly(2);
                              },
                              child: const CustomFontAileronRegular(
                                text: "Puntos + dinero",
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ), // Espacio entre el texto y el botón
                            WidgetBottonSelectGreen(
                                isSelected: isButtonSelectedList[2],
                                onTap: () {
                                  selectOnly(2);
                                }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.64,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFF003366)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Visibility(
                          visible: selectedIndex == 0,
                          child: const Padding(
                            padding: EdgeInsets.only(bottom: 8),
                            child: CustomFontAileronBold(text: "Redímelo con:"),
                          ),
                        ),
                        Visibility(
                          visible: selectedIndex == 1,
                          child: const Padding(
                            padding: EdgeInsets.only(bottom: 8),
                            child: CustomFontAileronBold(
                                text: "Cómpralo por solo:"),
                          ),
                        ),
                        Center(
                          child: Visibility(
                            visible: selectedIndex == 2,
                            child: const Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: CustomFontAileronBold(
                                  text: "¡ Una gran combinación !"),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Expanded(
                                child: Visibility(
                                  visible: _isVisible,
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.30,
                                    height: MediaQuery.of(context).size.height *
                                        0.045,
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      controller: pointsController,
                                      keyboardType: TextInputType.number,
                                      style: CustomFontAileronBlackTur(
                                        text: pointsIndicator,
                                      ).getTextStyle(context),
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.zero,
                                        filled: true,
                                        fillColor: const Color(0xfff4f4f4),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide.none,
                                        ),
                                        hintText: 'Puntos',
                                        hintStyle:
                                            const CustomFontAileronBlackTur(
                                          text: '0',
                                        ).getTextStyle(context),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          pointsIndicator = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: selectedIndex ==
                                  2, // icono para Puntos + dinero
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedIcon = _selectedIcon == Icons.add
                                        ? Icons.remove
                                        : Icons.add;
                                  });
                                },
                                child: Icon(
                                  _selectedIcon,
                                  color: Colors.black,
                                  size: 17,
                                ),
                              ),
                            ),
                            // const SizedBox(height: 30),
                            Center(
                              child: Expanded(
                                child: priceIndicator.isNotEmpty
                                    ? Container(
                                        color: const Color(0xffffffff),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.17,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.050,
                                        child: Center(
                                          child: CustomFontAileronBlack(
                                            text: priceIndicator,
                                          ),
                                        ),
                                      )
                                    : Container(),
                              ),
                            ),
                          ],
                        ),
                        Center(
                          child: Visibility(
                            visible: selectedIndex == 0,
                            child: const Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: CustomFontAileronRegular2(
                                text: "1 punto = \$25 cop",
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Visibility(
                            visible: selectedIndex == 2,
                            child: const Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: CustomFontAileronRegular2(
                                text: "1 punto = \$25 cop",
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Visibility(
                            visible: selectedIndex == 1,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Antes ',
                                  style: TextStyle(
                                    color: const Color(0xFFA6A6A6), // Color del texto no tachado
                                    fontSize: MediaQuery.of(context).size.width * 0.029, 
                                    fontWeight: FontWeight.w400,// Ajusta según sea necesario
                                  ),
                                  children:[
                                    TextSpan(
                                      text: '\$35.000',
                                      style:  TextStyle(
                                        color: const Color(0xFFA6A6A6), // Color del texto no tachado
                                        fontSize:MediaQuery.of(context).size.width * 0.029, // Ajusta según sea necesario
                                        decoration: TextDecoration.lineThrough, 
                                        fontWeight: FontWeight.w400// Tachado
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CounterButton(
                          value: counterValue,
                          onChanged: (newValue) {
                            setState(() {
                              counterValue = newValue;
                            });
                          },
                        ),
                        Flexible(
                          child: Container(
                              margin: const EdgeInsets.only(right: 7),
                              child: const CustomButtonPagar()),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void selectOnly(int index) {
    setState(() {
      selectedIndex = index;
      switch (index) {
        case 0:
          pointsIndicator = pointsController.text;
          priceIndicator = '';
          _isVisible = true;
          break;
        case 1:
          pointsIndicator = '';
          priceIndicator = '\$30.000';
          _isVisible = false;
          break;
        case 2:
          pointsIndicator = pointsController.text;
          priceIndicator = '\$30.000';
          _isVisible = true;
          break;
        default:
          pointsIndicator = '';
          priceIndicator = '';
          _isVisible = true;
          break;
      }
      if (index == 2) {
        _isVisible = true;
      }
      for (int i = 0; i < isButtonSelectedList.length; i++) {
        isButtonSelectedList[i] = (i == index);
      }
    });
  }

  List<Widget> _buildPageIndicator(int pageCount) {
    List<Widget> list = [];
    for (int i = 0; i < pageCount; i++) {
      list.add(
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 2.0,
          ),
          child: Container(
            height: MediaQuery.of(context).size.width * 0.050,
            width: MediaQuery.of(context).size.width * 0.015,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _currentPage == i ? const Color(0xFFffffff) : Colors.grey,
            ),
          ),
        ),
      );
    }
    return list;
  }
}
