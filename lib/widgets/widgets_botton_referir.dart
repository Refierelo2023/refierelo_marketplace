import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:refierelo_marketplace/widgets/widget_botton_select.dart';

class WidgetBottonReferir extends StatelessWidget {
  const WidgetBottonReferir({super.key});

  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width *
        0.25; // El 30% del ancho del dispositivo
    double buttonPaddingHorizontalPercentage = 0.019;

    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return const WidgetDisplayReferir();
            });
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: FractionallySizedBox(
          widthFactor: 0.8,
          child: Container(            
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width,
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
                  Color(0xFF003366),
                  Color(0xFF02b5e7),
                  // Color(0xFFce8f21),
                  // Color(0xFFf8e43e),
                ],
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.registered, // Icono de marca registrada
                  color: Colors.white,
                  size: 15,
                ),
                SizedBox(width: 5),
                CustomFontAileronRegularWhite(
                  text: "Referir",                  
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WidgetDisplayReferir extends StatefulWidget {
  const WidgetDisplayReferir({super.key});

  @override
  WidgetDisplayReferirState createState() => WidgetDisplayReferirState();
}

class WidgetDisplayReferirState extends State<WidgetDisplayReferir> {
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
              width: MediaQuery.of(context).size.width *
                  0.12, // Ancho de la línea (ejemplo: 50% del ancho de la pantalla)
            ),
            const SizedBox(height: 10.0),
            const Align(
              alignment: Alignment.center,
              child: CustomFontAileronBold(
                text: "Refiere este producto con tus amigos",
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  buildContainer(
                    index: 0,
                    title: 'Referir en Facebook',
                    subtitle: 'Post >',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.03,
                  ),
                  buildContainer(
                    index: 1,
                    title: 'Referir en Instagram',
                    subtitle: 'Mensaje >',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.03,
                  ),
                  buildContainer(
                    index: 2,
                    title: 'Referir en WhatsApp',
                    subtitle: 'Mensaje >',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.03,
                  ),
                  buildContainer(
                    index: 3,
                    title: 'Referir en Messenger',
                    subtitle: 'Mensaje >',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.03,
                  ),
                  buildContainer(
                    index: 4,
                    title: 'Referir en Otro Canal',
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
                vertical: MediaQuery.of(context).size.width * 0.010),
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
