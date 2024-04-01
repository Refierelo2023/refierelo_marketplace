import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:refierelo_marketplace/widgets/widgets_botton_referir.dart';

class ScrollMarcasSugeridas extends StatelessWidget {
  const ScrollMarcasSugeridas({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomFontAileronBold(
            text: "     Marcas que puedes Referir"),
          const SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,                
                children: [          
                  _buildProfileWidget(
                    imagePath: "assets/images/images_productos/black.png",
                    nameprofile: "Cine Colombia",
                    categorie: "Entretenimiento",
                    screenWidth: MediaQuery.of(context).size.width,
                  ),
                  _buildProfileWidget(
                    imagePath: "assets/images/usuario3/logo.png",
                    nameprofile: "KFC",
                    categorie: "Restaurante",
                    screenWidth: MediaQuery.of(context).size.width,
                  ),
                  _buildProfileWidget(
                    imagePath: "assets/images/images_productos/cineconbito.png",
                    nameprofile: "Hotel Sheraton",
                    categorie: "Turismo",
                    screenWidth: MediaQuery.of(context).size.width,
                  ),
                  _buildProfileWidget(
                    imagePath: "assets/images/images_productos/black.png",
                    nameprofile: "Body Tech",
                    categorie: "Cuidado Personal",
                    screenWidth: MediaQuery.of(context).size.width,
                  ),
                  _buildProfileWidget(
                    imagePath: "assets/images/images_productos/black.png",
                    nameprofile: "Bbva Unicentro",
                    categorie: "Producto Cinco",
                    screenWidth: MediaQuery.of(context).size.width,
                  ),
                  _buildProfileWidget(
                    imagePath: "assets/images/images_productos/black.png",
                    nameprofile: "\$4.000",
                    categorie: "Producto Seis",
                    screenWidth: MediaQuery.of(context).size.width,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileWidget({
    required String imagePath,
    required String nameprofile,
    required String categorie,
    required double screenWidth,
  }) {
    double containerWidth = screenWidth * 0.4; // Definir el ancho del contenedor
    double containerHeight =screenWidth * 0.01; // Definir el alto del contenedo

    return Container(
      width: containerWidth,
      height: containerHeight,
      margin: EdgeInsets.symmetric(
          vertical: screenWidth * 0.01, horizontal: screenWidth * 0.02),
      decoration: BoxDecoration(
        color: const Color(0xFFffffff),
        border: Border.all(color: const Color(0xFFf1f1f1)),        
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          // Container(
          //   padding: const EdgeInsets.all(5),
          //   decoration: BoxDecoration(
          //     color: const Color(0XFF003366),
          //     borderRadius: BorderRadius.circular(20),
          //   ),
          //   child: const Text(
          //     "50",
          //     style: TextStyle(
          //       fontSize: 14,
          //       fontFamily: "Aileron",
          //       color: Colors.white,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),
          const SizedBox(height: 30),
          Center(
            child: Container(
              width: 70,
              height: 70,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            nameprofile,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
            child: Text(
              categorie,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),
          Center(
            child: Container(
                padding: EdgeInsets.only(
                    top: screenWidth * 0.10, left: screenWidth * 0.018),
                child: const WidgetBottonReferir()),
          ),
        ],
      ),
    );
  }
}
