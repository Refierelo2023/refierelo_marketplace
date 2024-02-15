import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:refierelo_marketplace/widgets/widget_botton_comprar2.dart';


void main() {
  runApp(const ScreensUserSearchComprar());
}

class ScreensUserSearchComprar extends StatelessWidget {
  const ScreensUserSearchComprar({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: ListView(
          children: [
            _buildProductWidget(
              imagePath: "assets/images/images_productos/black.png",
              username: "Cine Colombia",
              category: "Entretenimiento",
              imageList: [
                "assets/images/images_productos/black.png",
                "assets/images/images_display_comprar.dart/black3.jpeg",
                "assets/images/images_display_comprar.dart/black4.jpeg",
                "assets/images/images_productos/black.png",
                "assets/images/images_productos/black.png",
              ],
            ),
            const SizedBox(height: 20,),
            _buildProductWidget(
              imagePath: "assets/images/usuario2/logo.png",
              username: "Body Tech",
              category: "Salud",
              imageList: [
                "assets/images/usuario2/body1.jpeg",
                "assets/images/usuario2/bodymarketplace5.png",
                "assets/images/usuario2/bodymarketplace6.png",
                "assets/images/usuario2/bodymarketplace7.png",
                "assets/images/usuario2/bodymarketplace8.png",
              ],
            ),
            const SizedBox(height: 20,),
            _buildProductWidget(
              imagePath: "assets/images/usuario3/logo.png",
              username: "Kfc",
              category: "Entretenimiento",
              imageList: [
                "assets/images/usuario3/kfc06.png",
                "assets/images/usuario3/kfc07.png",
                "assets/images/usuario3/kfc08.png",
                "assets/images/usuario3/kfc09.png",                
              ],
            ),
             const SizedBox(height: 20,),
            _buildProductWidget(
              imagePath: "assets/images/images_productos/black.png",
              username: "Cine Colombia",
              category: "Entretenimiento",
              imageList: [
                "assets/images/images_productos/black.png",
                "assets/images/images_display_comprar.dart/black3.jpeg",
                "assets/images/images_display_comprar.dart/black4.jpeg",
                "assets/images/images_productos/black.png",
                "assets/images/images_productos/black.png",
              ],
            ),
            // Otros widgets
          ],
        ),
      ),
    );
  }

  Widget _buildProductWidget({
    required String imagePath,
    required String username,
    required String category,
    required List<String> imageList,
  }) {
    return Material(
      shadowColor: Colors.black,
      elevation: 5,

      borderRadius: BorderRadius.circular(15),
      child: Ink(
        decoration: BoxDecoration(
          color: const Color(0xFFffffff),
          borderRadius: BorderRadius.circular(15),          
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4, left: 2),
                    child: CircleAvatar(
                      radius: 17,
                      backgroundImage: AssetImage(imagePath),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomFontAileronBold(
                        text: username,
                      ),
                      CustomFontAileronRegular2(
                        text: category,
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [WidgetBottonComprar2()],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(
              height: 100,
              child:ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
               child: ListView(
                scrollDirection: Axis.horizontal,
                children: imageList.map((image) => _buildImageWidget(image)).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildImageWidget(String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
        width: 100,
      ),
    );
  }
}
