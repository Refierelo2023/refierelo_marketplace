import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_product_registration.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile.dart/comprar_container.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile.dart/referir_continer.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile_user/view_screen_product.dart';
import 'package:video_player/video_player.dart';

class BottomClipper extends CustomClipper<Rect> {
  // recorta la forma del contenedor
  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, size.width, size.height - 20);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => false;
}

class ProductosComercios extends StatelessWidget {
  final bool referir;

  const ProductosComercios({super.key, required this.referir});

  @override
  Widget build(BuildContext context) {
    final productList = Provider.of<ProductModel>(context).productList;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 0.0001,
                mainAxisSpacing: 4,
                childAspectRatio: 0.55,
              ),
              itemCount: productList.length,
              itemBuilder: (BuildContext context, int index) {
                final productName = productList[productList.length -
                    1 -
                    index]; // Invertir el orden de la lista

                final productPrice = Provider.of<ProductModel>(context)
                        .productPrices[productName] ??
                    0.0;
                final formattedPrice =
                    '\$${NumberFormat("#,###").format(productPrice.toInt())}';

                final rewardPoints = Provider.of<ProductModel>(context)
                        .productRewardPoints[productName] ??
                    0;
                // Obtener los puntos desde el modelo ProductModel

                return buildProfileWidget(
                  imagePath: "assets/images/images_productos/black.png",
                  story: "assets/video/story_feed/tbone.mp4",
                  nameprofile: "Cine Colombia",
                  categorie: "Entretenimiento",
                  price: formattedPrice,
                  screenWidth: MediaQuery.of(context).size.width,
                  context: context,
                  rewardPoints: rewardPoints,
                  referir: referir,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProfileWidget({
    required String imagePath,
    required String story,
    required String nameprofile,
    required String categorie,
    required double screenWidth,
    required String price,
    required BuildContext context,
    required int rewardPoints,
    required bool referir,
  }) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ViewScreenProduct(),
          ),
        );
      },
      child: Stack(
        children: [
          if (story.isNotEmpty)
            Positioned.fill(
              child: Container(
                margin: EdgeInsets.symmetric(
                  vertical: screenWidth * 0.001,
                  horizontal: screenWidth * 0.005,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F7F9),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: story.isNotEmpty
                      ? story.toLowerCase().endsWith('.mp4')
                          ? VideoWidget(videoPath: story)
                          : Image.asset(
                              story,
                              fit: BoxFit.cover,
                            )
                      : Container(),
                ),
              ), // Si no hay historia, muestra un contenedor vacío
            ),
          referir
              ? ReferirContainer(
                  screenWidth: MediaQuery.of(context).size.width,
                  points: rewardPoints.toString(),
                )
              : ComprarContainer(
                  screenWidth: MediaQuery.of(context).size.width,
                  price: price,
                ),
          // Positioned(
          //   top: 10,
          //   right: 10,
          //   child: Padding(
          //     padding: const EdgeInsets.all(5.0),
          //     child: Container(
          //       width: 40,
          //       height: 40,
          //       decoration: const BoxDecoration(
          //         shape: BoxShape.circle,
          //         color: Colors.white,
          //       ),
          //       child: ClipRRect(
          //         borderRadius: BorderRadius.circular(20),
          //         child: Image.asset(
          //           imagePath,
          //           fit: BoxFit.cover,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class VideoWidget extends StatefulWidget {
  final String videoPath;

  const VideoWidget({Key? key, required this.videoPath});

  @override
  VideoWidgetState createState() => VideoWidgetState();
}

class VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoPath)
      ..initialize().then((_) {
        setState(() {});
      });
    _controller.setLooping(true);
    _controller.pause(); // Pausa el video al inicializarse
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: _controller.value.aspectRatio,
      child: VideoPlayer(_controller),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
