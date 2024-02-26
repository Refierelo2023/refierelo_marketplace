import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:refierelo_marketplace/app/app_data/story_data.dart';
import 'package:refierelo_marketplace/widgets/story_feed/widget_display_story_point_reward.dart';
import 'package:http/http.dart' as http;
import 'package:refierelo_marketplace/widgets/story_feed/widgets_user_story_profile.dart';

class WidgetsStoryEditImage extends StatefulWidget {
  final File selectedImage;

  const WidgetsStoryEditImage({
    super.key,
    required this.selectedImage,
  });




  @override
  State<WidgetsStoryEditImage> createState() => _WidgetsStoryEditImageState();
}

class _WidgetsStoryEditImageState extends State<WidgetsStoryEditImage>
    with TickerProviderStateMixin {
  final bool _isImageLoaded = false;  

  void onSaveImage() {
  // Asumimos que widget.selectedImage nunca es nulo en este contexto

  // Obtén la URL de la imagen seleccionada
  String imageUrl = widget.selectedImage.path;

  // Si la URL es una ruta de archivo local, construye una URL válida
  if (imageUrl.startsWith('file://')) {
    imageUrl = Uri.file(imageUrl).toString();
  }

  // Actualiza las historias con la URL de la imagen seleccionada
  updateStories(imageUrl);

  // Llama a la función para subir la historia al servidor y luego muestra la pantalla de edición
  uploadStoryAndNavigate(context);
}
Future<void> uploadStoryAndNavigate(BuildContext context) async {
  try {
    // Abre el archivo de la imagen seleccionada
    File imageFile = File(selectedImagePath!);
    
    // Convierte la imagen a bytes para enviar al servidor
    List<int> imageBytes = await imageFile.readAsBytes();
    
    // Codifica la imagen a base64
    String base64Image = base64Encode(imageBytes);
    
    // Configura la URL del servidor
    Uri serverUrl = Uri.parse("http://5.189.161.131:5000/webhook");
    
    // Configura el cuerpo de la solicitud
    Map<String, dynamic> requestBody = {
      "image": base64Image,
      // Aquí puedes agregar más datos, como el usuario que subió la historia
    };
    
    // Realiza la solicitud POST al servidor
    http.Response response = await http.post(
      serverUrl,
      body: json.encode(requestBody),
      headers: {"Content-Type": "application/json"},
    );
    
    // Verifica si la solicitud fue exitosa (código de estado 200)
    if (response.statusCode == 200) {
      // Muestra la pantalla de edición solo si la carga al servidor fue exitosa
      Future.delayed(Duration.zero, () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => WidgetsStoryEditImage(
              selectedImage: File(selectedImagePath!),
            ),
          ),
        );
      });
    } else {
      // Maneja el caso en que la carga al servidor no fue exitosa
      // print("Error en la carga al servidor: ${response.statusCode}");
    }
  } catch (error) {
    // print("Error: $error");
  }
}



  @override
  Widget build(BuildContext context) {
    var borderside = const BorderSide(
      color: Colors.white,
      width: 0.5,
    );
    var borderRadius = BorderRadius.circular(11.r);
    OutlineInputBorder(borderSide: borderside, borderRadius: borderRadius);
    return Material(
      child: Container(
        color: Colors.black,
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.06,
                    bottom: MediaQuery.of(context).size.height * 0.015,
                    left: 0,
                    right: 0,
                  ),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.file(widget.selectedImage),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: !_isImageLoaded,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 45),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(width: 15),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return const WidgetDisplayStoryPointReward();
                              },
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Colors.white,
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const FaIcon(
                                    FontAwesomeIcons.registered,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    'Asignar',
                                    style: TextStyle(
                                      fontFamily: 'Aileron',
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.034,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        const Spacer(),
                        // Expanded(
                        //   child: TextField(
                        //     decoration: InputDecoration(
                        //       labelText: 'Ingresa un comentario',
                        //       filled: true,
                        //       fillColor: Colors.transparent,
                        //       enabledBorder: OutlineInputBorder(
                        //         borderRadius: BorderRadius.circular(15),
                        //         borderSide: const BorderSide(color: Color(0xFFffffff)),
                        //       ),
                        //       focusedBorder: OutlineInputBorder(
                        //         borderRadius: BorderRadius.circular(15),
                        //         borderSide: const BorderSide(color: Color(0xFFffffff)),
                        //       ),
                        //       labelStyle: const TextStyle(
                        //         fontFamily: "Aileron",
                        //         fontSize: 14,
                        //         color: Color(0xFFffffff),
                        //       ),
                        //       contentPadding: const EdgeInsets.symmetric(
                        //         vertical: 15.0,
                        //         horizontal: 15.0,
                        //       ),
                        //       floatingLabelBehavior: FloatingLabelBehavior.never,
                        //       hintStyle: const TextStyle(color: Colors.white),
                        //       isDense: true,
                        //       hintMaxLines: 2,
                        //     ),
                        //     textAlignVertical: TextAlignVertical.bottom,
                        //     style: const TextStyle(color: Colors.white),
                        //   ),
                        // ),
                        InkWell(
                          onTap:
                              onSaveImage, // Llama a la función al hacer clic en el botón
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Container(
                              height: 48,
                              width: 48,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: MaterialButton(
                                padding: EdgeInsets.zero,
                                onPressed:
                                    onSaveImage, // Llama a la función al hacer clic en el botón
                                child: const FaIcon(
                                  FontAwesomeIcons.angleRight,
                                  color: Color(0xFF003366),
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
