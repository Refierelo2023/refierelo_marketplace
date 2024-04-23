import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:refierelo_marketplace/widgets/widget_botton_select.dart';


class WidgetDisplayShareHistory extends StatefulWidget {
  const WidgetDisplayShareHistory({super.key});

  @override
  WidgetDisplayShareHistoryState createState() => WidgetDisplayShareHistoryState();
}

class WidgetDisplayShareHistoryState extends State<WidgetDisplayShareHistory> {
  late List<bool> isButtonSelectedList;
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    isButtonSelectedList = List.generate(5, (index) => false);
  }

  void selectOnly(int index) {
    setState(() {
      for (int i = 0; i < isButtonSelectedList.length; i++) {
        isButtonSelectedList[i] = (i == index);
      }
    });
  }

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 9),
              height: 5, // Altura de la línea
              decoration: const BoxDecoration(
                color: Color(0xFF666666), // Color de la línea
                borderRadius:
                    BorderRadius.all(Radius.circular(20)), // Bordes redondeados
              ),
              width: MediaQuery.of(context).size.width * 0.12, // Ancho de la línea (ejemplo: 50% del ancho de la pantalla)
            ),
            const SizedBox(height: 10.0),
            const Align(
              alignment: Alignment.center,
              child: CustomFontAileronBold(
                text: "Comparte esta historia en tus redes sociales",
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  buildContainer(
                    index: 0,
                    title: 'Compartir en Facebook',
                    subtitle: 'Historias >',
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width * 0.03,),
                  buildContainer(
                    index: 1,
                    title: 'Compartir en Instagram',
                    subtitle: 'Historias >',
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width * 0.03,),
                  buildContainer(
                    index: 2,
                    title: 'Compartir en WhatsApp',
                    subtitle: 'Historias >',
                  ),
                   SizedBox(height: MediaQuery.of(context).size.width * 0.03,),
                  buildContainer(
                    index: 3,
                    title: 'Compartir en Telegram',
                    subtitle: 'Historias >',
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width * 0.03,),
                  buildContainer(
                    index: 4,
                    title: 'Compartir en Otro Canal',
                    subtitle: 'Mensaje >',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContainer({
    required int index,
    required String title,
    required String subtitle,
  }) {
    String imagePath = '';
    switch (index) {
      case 0:
        imagePath = 'assets/images/images_display/facebook.png';
        break;
      case 1:
        imagePath = 'assets/images/images_display/instagram.png';
        break;
      case 2:
        imagePath = 'assets/images/images_display/whatsApp.png';
        break;
      case 3:
        imagePath = 'assets/images/images_display/Messenger3.png';
        break;
      case 4:
        imagePath = 'assets/images/images_display/compartir.png';
        break;
    }
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          selectOnly(index);
          _toggleVisibility();
        },
        child: Ink(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.transparent,
                spreadRadius: 0,
                blurRadius: 20,
                offset: Offset(0, 0),
              ),
            ],
            border: Border.all(
              color: isButtonSelectedList[index]
                  ? Colors.transparent
                  : Colors.transparent,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05, 
              vertical: MediaQuery.of(context).size.width *0.010),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.09,
                  height: MediaQuery.of(context).size.width * 0.09,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover, // Alto de la imagen
                  ),
                ),
                const SizedBox(width: 15), // Espacio entre la imagen y el texto
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomFontAileronRegular(
                      text: title,
                    ),
                    CustomFontAileronRegular2(
                      text: subtitle,
                    ),
                  ],
                ),
                const Spacer(),
                WidgetBottonSelectGreen(
                  isSelected: isButtonSelectedList[index],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
