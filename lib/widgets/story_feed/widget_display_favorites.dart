import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:refierelo_marketplace/widgets/productos_usuario.dart';
import 'package:refierelo_marketplace/widgets/widget_botton_select.dart';

class WidgetDisplayFavorites extends StatefulWidget {
  final IconData selectedIcon;
  final String nameCategorie;


  const WidgetDisplayFavorites({
    required this.selectedIcon,
    required this.nameCategorie,
    
    super.key});

  @override
  WidgetDisplayFavoritesState createState() => WidgetDisplayFavoritesState();
}

class WidgetDisplayFavoritesState extends State<WidgetDisplayFavorites> {
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
      ),
    ),
    child: Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 9),
          height: 5, // Altura de la línea
          decoration: const BoxDecoration(
            color: Color(0xFF666666), // Color de la línea
            borderRadius: BorderRadius.all(Radius.circular(20)), // Bordes redondeados
          ),
          width: MediaQuery.of(context).size.width * 0.12, //  50% del ancho de la pantalla
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 5),
          child: Row(
            children: [
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  gradient: const LinearGradient(
                    colors: [Color(0XFF003366), Color(0XFF02b5e7)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  border: Border.all(
                    color: const Color(0xFF02B5E7),
                    width: 1.0,
                  ),
                ),
                child: Icon(
                  widget.selectedIcon,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 5),
              CustomFontAileronRegular(
                text: widget.nameCategorie,
                fontSize: 0.030,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const Divider(
          color: Colors.grey, // Color de la línea
          thickness: 1.0, // Grosor de la línea
          indent: 10, // Sangría a la izquierda
          endIndent: 10, // Sangría a la derecha
        ),
        // Expanded(
        //   child: SingleChildScrollView(
        //     child: Padding(
        //       padding: const EdgeInsets.only(left: 5, right: 5),
        //       child: Column(
        //         children: [
        //           // buildContainer(
        //           //   index: 0,
        //           //   title: 'Kfc',
        //           //   subtitle: 'Restaurantes >',
        //           // ),
        //           const ProductosUsuario(),
        //           SizedBox(
        //             height: MediaQuery.of(context).size.width * 0.03,
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        Expanded(
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              crossAxisSpacing: 0.01, // espacio entre columnas
              mainAxisSpacing: 5, // espacio entre filas
              childAspectRatio: 0.55,
              children: [
                const ProductosUsuario().buildProfileWidget(
                  imagePath: "assets/images/images_productos/black.png",
                  story: "assets/images/comparte_y_gana/bannerReferente.png",
                  nameprofile: "Cine Colombia",
                  categorie: "Entretenimiento",
                  screenWidth: MediaQuery.of(context).size.width,
                ),
                 const ProductosUsuario().buildProfileWidget(
                  imagePath: "assets/images/usuario3/logo.png",
                  story: "assets/video/story_feed/v1.mp4",
                  nameprofile: "KFC",
                  categorie: "Restaurante",
                  screenWidth: MediaQuery.of(context).size.width,
                ),
              ],
            ),
          ),
      ],
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
        imagePath = 'assets/images/usuario3/logo.png';
        break;
      case 1:
        imagePath = 'assets/images/usuario3/logo.png';
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
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.width * 0.1,
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
