import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:refierelo_marketplace/data/screens/screens_profile.dart/widget_cirlce_product.dart';


class WidgetProductEditImage extends StatefulWidget {
  final File selectedImageProduct;
  final Function(String) setImagePath;

  const WidgetProductEditImage({
    super.key,
    required this.selectedImageProduct,
    required this.setImagePath,
    
  });

  @override
  WidgetProductEditImageState createState() => WidgetProductEditImageState();
}

class WidgetProductEditImageState extends State<WidgetProductEditImage> {
  final bool _isImageLoaded = false;

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
                  child: Container(
                    color: Colors.transparent,
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width / 2,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width / 2,
                          ),
                          child: InteractiveViewer(
                            boundaryMargin: const EdgeInsets.all(double.infinity),
                            minScale: 1.0,
                            maxScale: 4.0,
                            child: Container(
                              height: MediaQuery.of(context).size.width,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: FileImage(widget.selectedImageProduct),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
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
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.transparent,
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
                                  color: Colors.transparent,
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
                                    color: Colors.transparent,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        const Spacer(),
                        InkWell(
                          onTap: onSaveImageProduct,
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
                                onPressed: onSaveImageProduct,
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

  void onSaveImageProduct() {
    // Obtén la URL de la imagen seleccionada
    String imagePath = widget.selectedImageProduct.path;

    // Si la URL es una ruta de archivo local, construye una URL válida
    if (imagePath.startsWith('file://')) {
      imagePath = Uri.file(imagePath).toString();
    }

    uploadImageAndNavigate(context);

    Navigator.of(context).popUntil((route) => route.isFirst);
  }

  Future<void> uploadImageAndNavigate(BuildContext context) async {
    try {
      // Abre el archivo de la imagen seleccionada
      File imageFile = widget.selectedImageProduct;

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

        Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => WidgetCircleProduct(
        nameproduct: "",        
        imageProduct: widget.selectedImageProduct
      ),
    ),
  );
        
      } else {
        // Maneja el caso en que la carga al servidor no fue exitosa
        print("Error en la carga al servidor: ${response.statusCode}");
      }
    } catch (error) {
      print("Error: $error");
    }
  }
}
