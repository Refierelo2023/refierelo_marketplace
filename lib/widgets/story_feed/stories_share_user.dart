import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
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

class StoriesShareUser extends StatelessWidget {
  const StoriesShareUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          const CustomFontAileronBold(text: "Historias "),
          const SizedBox(height: 10),
          Expanded(
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              crossAxisSpacing: 0.01, // espacio entre columnas
              mainAxisSpacing: 5, // espacio entre filas
              childAspectRatio: 0.55,
              children: [
                _buildProfileWidget(
                  imagePath: "assets/images/images_productos/black.png",
                  story: "assets/images/comparte_y_gana/bannerReferente.png",
                  nameprofile: "Cine Colombia",
                  categorie: "Entretenimiento",
                  screenWidth: MediaQuery.of(context).size.width,
                ),
                _buildProfileWidget(
                  imagePath: "assets/images/usuario3/logo.png",
                  story: "assets/video/story_feed/v1.mp4",
                  nameprofile: "KFC",
                  categorie: "Restaurante",
                  screenWidth: MediaQuery.of(context).size.width,
                ),
                _buildProfileWidget(
                  imagePath: "assets/images/images_productos/cineconbito.png",
                  story: "",
                  nameprofile: "Hotel Sheraton",
                  categorie: "Turismo",
                  screenWidth: MediaQuery.of(context).size.width,
                ),
                _buildProfileWidget(
                  imagePath: "assets/images/images_productos/black.png",
                  story: "",
                  nameprofile: "Body Tech",
                  categorie: "Cuidado Personal",
                  screenWidth: MediaQuery.of(context).size.width,
                ),
                _buildProfileWidget(
                  imagePath: "assets/images/images_productos/black.png",
                  story: "",
                  nameprofile: "Bbva Unicentro",
                  categorie: "Producto Cinco",
                  screenWidth: MediaQuery.of(context).size.width,
                ),
                _buildProfileWidget(
                  imagePath: "assets/images/images_productos/black.png",
                  story: "",
                  nameprofile: "\$4.000",
                  categorie: "Producto Seis",
                  screenWidth: MediaQuery.of(context).size.width,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileWidget({
    required String imagePath,
    required String story,
    required String nameprofile,
    required String categorie,
    required double screenWidth,
  }) {
    return Stack(
      children: [
        if (story.isNotEmpty)
          Positioned.fill(
            child: Container(
                margin: EdgeInsets.symmetric(
                  vertical: screenWidth * 0.01,
                  horizontal: screenWidth * 0.01,
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
                )), // Si no hay historia, muestra un contenedor vacío
          ),
        Positioned(
          top: 10,
          right: 10,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomFontAileronSemiBoldWhite(
                text: nameprofile,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: CustomFontAileronRegularWhite(
                  text: categorie,
                ),
              ),
            ],
          ),
        ),
      ],
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
    return GestureDetector(
      onTap: () {
        setState(() {
          if (_controller.value.isPlaying) {
            _controller.pause(); // Pausa el video si está reproduciéndose
          } else {
            _controller.play(); // Reproduce el video si está pausado
          }
        });
      },
      child: AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: VideoPlayer(_controller),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
