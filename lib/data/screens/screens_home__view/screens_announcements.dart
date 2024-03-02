import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class ScreensAnnouncements extends StatelessWidget {
  const ScreensAnnouncements({super.key});

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
        padding: const EdgeInsets.only(left: 0, right: 0, top: 10),
        child: ListView(
          children: [
            _buildProductWidget(
              imagePath: "assets/images/images_productos/black.png",
              username: "Cine Colombia",
              category: "Entretenimiento",
              coverImage:
                  "assets/images/images_display_comprar.dart/black3.jpeg",
              imageList: [
                "assets/images/images_productos/black.png",
                "assets/images/images_display_comprar.dart/black3.jpeg",
                "assets/images/images_display_comprar.dart/black4.jpeg",
                "assets/images/images_productos/black.png",
                "assets/images/images_productos/black.png",
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            _buildProductWidget(
              imagePath: "assets/images/usuario2/logo.png",
              username: "Body Tech",
              category: "Salud",
              coverImage: "assets/images/usuario2/bodymarketplace6.png",
              imageList: [
                "assets/images/usuario2/body1.jpeg",
                "assets/images/usuario2/bodymarketplace5.png",
                "assets/images/usuario2/bodymarketplace6.png",
                "assets/images/usuario2/bodymarketplace7.png",
                "assets/images/usuario2/bodymarketplace8.png",
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            _buildProductWidget(
              imagePath: "assets/images/usuario3/logo.png",
              username: "Kfc",
              category: "Entretenimiento",
              coverImage: "assets/images/usuario3/kfc09.png",
              imageList: [
                "assets/images/usuario3/kfc06.png",
                "assets/images/usuario3/kfc07.png",
                "assets/images/usuario3/kfc08.png",
                "assets/images/usuario3/kfc09.png",
              ],
            ),
            const SizedBox(
              height: 20,
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
    required String coverImage,
    required List<String> imageList,
  }) {
    return _ProductWidget(
      imagePath: imagePath,
      username: username,
      category: category,
      coverImage: coverImage,
      imageList: imageList,
    );
  }
}
class _ProductWidget extends StatelessWidget {
  const _ProductWidget({
    required this.imagePath,
    required this.username,
    required this.category,
    required this.coverImage,
    required this.imageList,
  });

  final String imagePath;
  final String username;
  final String category;
  final String coverImage;
  final List<String> imageList;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(15),
      child: Ink(
        decoration: const BoxDecoration(
          color: Color(0xFFffffff),
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
                  const SizedBox(
                    width: 10,
                  ),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Icon(
                          Icons.more_vert,
                          size: 25,
                          color: Color(0XFF003366),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(coverImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 100,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: imageList
                      .map((image) => _buildImageWidget(image))
                      .toList(),
                ),
              ),
            ),
            const SizedBox(height: 5),
            const ProductIconRow(),
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

class ProductIconRow extends StatefulWidget {
  const ProductIconRow({super.key});

  @override
  ProductIconRowState createState() => ProductIconRowState();
}

class ProductIconRowState extends State<ProductIconRow> {
  bool isStarIconSelected = false;
  bool isCustomIconSelected = false;
  bool isHeartIconSelected = false;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 10),
      child: SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  isStarIconSelected = !isStarIconSelected;
                });
              },
              child: Image.asset(
                isStarIconSelected
                    ? "assets/images/images_icons/star2.png"
                    : "assets/images/images_icons/star.png",
                width: 28,
                height: 28,
              ),
            ),
            const Spacer(),            
            InkWell(
              onTap: () {
                setState(() {
                  isHeartIconSelected = !isHeartIconSelected;
                });
              },
              child: Image.asset(
                isHeartIconSelected
                    ? "assets/images/images_icons/heart2.png"
                    : "assets/images/images_icons/heart.png",
                width: 25,
                height: 25,
              ),
            ),
            const SizedBox(width: 15,),
            InkWell(
              onTap: () {
                setState(() {
                  isCustomIconSelected = !isCustomIconSelected;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Image.asset(
                  isCustomIconSelected
                      ? "assets/images/images_icons/compartirblue1.png"
                      : "assets/images/images_icons/compartirnegro.png",
                  width: 25,
                  height: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
