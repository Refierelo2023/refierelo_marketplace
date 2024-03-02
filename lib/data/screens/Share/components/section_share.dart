import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:photo_view/photo_view.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:refierelo_marketplace/widgets/widgets_botton_referir.dart';

class SectionShare extends StatefulWidget {
  const SectionShare({required this.callback, super.key});

  final Function(String) callback;

  @override
  State<SectionShare> createState() => _SectionShareState();
}

class _SectionShareState extends State<SectionShare> {
  @override
  void initState() {
    super.initState();
    FlutterDownloader.initialize(debug: true);
  }

  Future<void> _downloadImage() async {
    try {
      const String imageName = 'bannerReferente.png';
      final ByteData data =
          await rootBundle.load('assets/images/comparte_y_gana/$imageName');
      final List<int> bytes = data.buffer.asUint8List();
      final Directory tempDir = await getTemporaryDirectory();
      final String tempPath = tempDir.path;
      final File file = File('$tempPath/$imageName');
      await file.writeAsBytes(bytes);

      // Guardar en la galería
      final result =
          await ImageGallerySaver.saveImage(Uint8List.fromList(bytes));

      // Puedes agregar lógica adicional aquí, como mostrar un mensaje de éxito.
      print('Imagen guardada en: ${file.path}');
      print('Guardada en la galería: $result');
    } catch (error) {
      print('Error al descargar la imagen: $error');
      // Trata el error según sea necesario (por ejemplo, mostrar un mensaje de error).
      throw PlatformException(
        code: 'DOWNLOAD_ERROR',
        message: 'Error al descargar la imagen',
        details: error.toString(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/comparte_y_gana/bannerReferente.png',
                width: size.width * 0.3,
                height: size.height * 0.3,
              )
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Colors.transparent,
                      content: Container(
                        color: Colors.transparent,
                        height: 400,
                        width: 500,
                        child: PhotoView(
                          backgroundDecoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          imageProvider: const AssetImage(
                            'assets/images/comparte_y_gana/bannerReferente.png',
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.visibility_rounded,
                      color: Color(0xFFffffff),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(); // Cerrar la vista previa
                    },
                  ),
                  const CustomFontAileronRegularWhite(
                    text: 'Vista previa',
                  ),
                ],
              ),
            ),
            const Divider(height: 5),
            TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.share_rounded,
                      color: Color(0xFFffffff),
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return const WidgetDisplayReferir();
                        }
                      );
                    },
                  ),
                  const CustomFontAileronRegularWhite(
                    text: 'Compartir',
                  ),
                ],
              ),
            ),
            const Divider(height: 5),
            TextButton(
              onPressed: () async {
                try {
                  await _downloadImage();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                          'Imagen guardada en el dispositivo y en la galería'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                } on PlatformException {
                  Fluttertoast.showToast(
                    msg: 'No se pudo descargar.',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
                }
              },
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.file_download_outlined,
                      color: Color(0xFFffffff),
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                  const CustomFontAileronRegularWhite(
                    text: 'Descargar',
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
