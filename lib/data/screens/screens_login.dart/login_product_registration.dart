import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile.dart/profile_screens.dart';
import 'package:refierelo_marketplace/data/screens/otp/components/btn_next.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_points_calculate.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_points_calculate2.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:http/http.dart' as http;

class ProductModel extends ChangeNotifier {
  Map<String, File> selectedImageProductMap = {};
  String productName = '';
  double productPrice = 0.0;
  String productDescription = '';  
  int points = 0;
  int rewardPoints = 0;
  List<String> productList = [];
  Map<String, double> productPrices = {};
  final Map<String, int> productRewardPoints = {};
  File? selectedImageProduct;
  

  Future<void> pickImages(BuildContext context) async {
    List<XFile>? images = await ImagePicker().pickMultiImage(
      maxWidth: 800,
      maxHeight: 600,
      imageQuality: 85,
    );
    if (images != null) {
      // Limitar la cantidad de imágenes seleccionadas a cinco
      if (selectedImageProductMap.length + images.length <= 5) {
        for (var image in images) {
          selectedImageProductMap[
              'Image ${selectedImageProductMap.length + 1}'] = File(image.path);
        }
      } else {
        // Muestra un mensaje de error si se excede el límite
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Error'),
            content: const Text('No puedes seleccionar más de cinco imágenes.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
      notifyListeners();
    }
  }

  void updateProductName(String name) {
    productName = name;
    notifyListeners();
  }

  void updateProductDescription(String description) {
    productDescription = description;
    notifyListeners();
  }

  void updateProductPrice(double price) {
    productPrice = price;
    notifyListeners();
  }

  void addProduct(
    String productName,
    double productPrice,
    int rewardPoints,
    File? selectedCoverImage,
    Map<String, File> selectedImageProductMap,
  ) {
    productList.add(productName);
    productPrices[productName] = productPrice;
    productRewardPoints[productName] = rewardPoints;

    // Asignar la imagen de portada si está presente
    if (selectedCoverImage != null) {
      selectedImageProduct = selectedCoverImage;
    }
    // Asignar hasta cinco imágenes al carrusel si están presentes
    int i = 1;
    selectedImageProductMap.forEach((key, value) {
      if (i <= 5) {
        selectedImageProductMap['Image $i'] = value;
        i++;
      }
    });

    notifyListeners();
  }

  void updatePoints(int newPoints) {
    points = newPoints;
    notifyListeners();
  }

  void updateRewardReferente(int rewardPoints) {
    this.rewardPoints = rewardPoints;
    notifyListeners();
  }

  void updateSelectedImage(File? image) {
    selectedImageProduct = image;
    notifyListeners();
  }
}

class LoginProductRegistration extends StatefulWidget {
  const LoginProductRegistration({super.key});

  @override
  LoginProductRegistrationState createState() =>
      LoginProductRegistrationState();
}

void showBubbleMessage(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("¡ Importante !"),
        content: const Text(
            "Comisión vigente año 2024 pasarela de pagos 2.7% + \$800 Cop, la tárifa más baja del mercado"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cerrar'),
          ),
        ],
      );
    },
  );
}

class LoginProductRegistrationState extends State<LoginProductRegistration> {
  TextEditingController nombreProductoController = TextEditingController();

  @override
  void dispose() {
    // liberar los recursos de los controladores cuando el widget se elimine
    nombreProductoController.dispose();
    super.dispose();
  }

  Future<void> enviarWebhook() async {
    final url = Uri.parse("http://5.189.161.131:5000/webhook");
    final data = {
      'nombreProducto': nombreProductoController.text,

      // ... otras propiedades del formulario
    };
    final respuesta = await http.post(url, body: data);
    if (respuesta.statusCode == 200) {
      print('Webhook enviado con éxito');
    } else {
      print('Error al enviar el webhook: ${respuesta.statusCode}');
    }
  }

  // List<XFile> _selectedImages = [];
  // Future<void> _pickImages() async {
  //   List<XFile>? images = await ImagePicker().pickMultiImage(
  //     maxWidth: 800,
  //     maxHeight: 600,
  //     imageQuality: 85,
  //   );
  //   if (images != null) {
  //     setState(() {
  //       // Limitar la cantidad de imágenes seleccionadas a cinco
  //       if (_selectedImages.length + images.length <= 5) {
  //         _selectedImages.addAll(images);
  //       } else {
  //         // Muestra un mensaje de error si se excede el límite
  //         showDialog(
  //           context: context,
  //           builder: (context) => AlertDialog(
  //             title: const Text('Error'),
  //             content:
  //                 const Text('No puedes seleccionar más de cinco imágenes.'),
  //             actions: [
  //               TextButton(
  //                 onPressed: () => Navigator.pop(context),
  //                 child: const Text('OK'),
  //               ),
  //             ],
  //           ),
  //         );
  //       }
  //     });
  //   }
  // }

  Color borderColor3 =
      Colors.transparent; // Color inicial del borde del contenedor 3
  Color borderColor4 =
      Colors.transparent; // Color inicial del borde del contenedor 4

  bool switchValue = false; // bool para CupertunoSwitch

  String? selectedValue;
  final ImagePicker _imagePicker = ImagePicker();
  PickedFile? _pickedImage;
  PickedFile? _pickedFile;

  // final TextEditingController _controller = TextEditingController();

  String? dropdownValue;
  List<String> pointsList = [
    '0 Puntos',
    '2 Puntos',
    '4 Puntos',
    '6 Puntos',
    '8 Puntos',
    '10 Puntos',
    '20 Puntos',
  ];

  List<String> results = [
    "\$ 0",
    "\$ 50",
    "\$ 100",
    "\$ 150",
    "\$ 200",
    "\$ 250",
    "\$ 500",
  ];

  Widget buildRewardDropdown() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 5.0),
        child: DropdownButtonFormField<String>(
          value: dropdownValue,
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          decoration: InputDecoration(
            labelText: 'Recompensa Referente',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: borderColor3),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Color(0xFF02B5E7)),
            ),
            labelStyle: const TextStyle(
              fontFamily: "Aileron",
              fontSize: 14,
              color: Color(0xFF003366),
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 15.0,
              horizontal: 15.0,
            ),
          ),
          items: [
            '0 Puntos',
            '2 Puntos',
            '4 Puntos',
            '6 Puntos',
            '8 Puntos',
            '10 Puntos',
            '20 Puntos',
          ].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget buildPoints() {
    String selectedResult = getResultForSelectedValue(dropdownValue);
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 5.0, right: 90, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Align(
                alignment: Alignment.center,
                child: CustomFontAileronBold(
                  text: selectedResult,
                  fontSize: 0.043,
                ),
              ),
            ),
            const SizedBox(width: 5),
            const Center(
              child: CustomFontAileronRegular(
                text: "Cop",
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String getResultForSelectedValue(String? selectedValue) {
    int index = pointsList.indexOf(selectedValue ?? '');
    if (index >= 0 && index < results.length) {
      return results[index];
    } else {
      return "\$ 0"; // O un valor predeterminado en caso de no encontrarse
    }
  }

  Future<void> _pickImage() async {
    try {
      final pickedImage =
          await _imagePicker.pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        setState(() {
          _pickedImage = PickedFile(pickedImage.path);
        });
      }
    } catch (e) {
      print('Error al seleccionar la imagen: $e');
    }
  }

  Future<void> _pickImageOrVideo() async {
    try {
      final pickedFile = await ImagePicker().pickVideo(
        source: ImageSource.gallery,
      );

      if (pickedFile == null) return;

      setState(() {
        _pickedFile = PickedFile(pickedFile.path);
      });
    } catch (e) {
      print('Error al seleccionar la imagen o el video: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductModel>(builder: (context, productModel, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                child: CustomFontAileronBold2(
                  text: 'Tienda Virtual',
                ),
              ),
              const Center(
                child: CustomFontAileronRegular(
                  text: '¡ Excelente vas muy bien, registra tus productos !',
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),
              // Imagen de perfil y texto
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 10),
                  const Align(
                    alignment: Alignment.center,
                    child: CustomFontAileronBold2(
                      text: "Producto 2",
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 160, // Altura fija para los elementos
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context)
                              .size
                              .width, // Ancho del ListView igual al ancho de la pantalla
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment
                                .center, // Centra horizontalmente los elementos dentro del Row
                            children: [
                              GestureDetector(
                                onTap: () async {
                                  await productModel.pickImages(context);
                                },
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: Container(
                                        width: 160,
                                        height: 160,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          borderRadius: BorderRadius.circular(
                                              10), // Bordes redondeados
                                          image: const DecorationImage(
                                            image: AssetImage(
                                              'assets/images/images_icons/product.png',
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 5,
                                      right: 15,
                                      child: GestureDetector(
                                        onTap: () async {
                                          await productModel
                                              .pickImages(context);
                                        },
                                        child: const Icon(
                                          Icons.camera_alt,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: CarouselSlider.builder(
                                  slideBuilder: (index) {
                                    final List<String> keys = productModel
                                        .selectedImageProductMap.keys
                                        .toList();
                                    final String productName = keys[index];
                                    final File imageFile = productModel
                                        .selectedImageProductMap[productName]!;
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          productModel.selectedImageProductMap;
                                        });
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0),
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      20), // Bordes redondeados
                                              child: Image.file(
                                                imageFile,
                                                width: 160,
                                                height: 160,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Positioned(
                                              top: 5,
                                              right: 5,
                                              child: Container(
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  color: Colors.white
                                                      .withOpacity(0.4),
                                                  shape: BoxShape.circle,
                                                ),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      productModel
                                                          .selectedImageProductMap;
                                                    });
                                                  },
                                                  child: const Icon(
                                                    Icons.close_rounded,
                                                    color: Colors.white,
                                                    size: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  itemCount: productModel
                                      .selectedImageProductMap.length,
                                  viewportFraction:
                                      0.60, // Fracción de la vista del carrusel
                                  initialPage: 1, // Página inicial
                                  scrollDirection: Axis.horizontal,
                                  // Dirección de desplazamiento
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              // TextField 1: Nombre Comercial
              TextField(
                onChanged: (value) {                  
                  Provider.of<ProductModel>(context, listen: false)
                      .updateProductName(value);
                },
                decoration: InputDecoration(
                  labelText: 'Nombre Producto',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Color(0xFF02B5E7)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Color(0xFF02B5E7)),
                  ),
                  // fillColor: const Color(0xFFf4f4f4),
                  // filled: true,
                  labelStyle: const TextStyle(
                      fontFamily: "Aileron",
                      fontSize: 14,
                      color: Color(0xFF003366)),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 15.0),
                ),
              ),
              const SizedBox(height: 10),
              const LoginPointsCalculate(), // Contenedor de Precio
              const SizedBox(height: 10),
              const LoginPointsCalculate2(),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomDropdown(
                    labelText: "Beneficio Referido",
                    items: const [
                      '5 % Descuento',
                      '6 % Descuento',
                      '7 % Descuento',
                      '8 % Descuento',
                      '9 % Descuento',
                      '10 % Descuento',
                      '11 % Descuento',
                      '12 % Descuento',
                      '13 % Descuento',
                      '14 % Descuento',
                      '15 % Descuento',
                      'Regalo Sorpresa',
                    ],
                    value:
                        selectedValue, // <--- Establece el valor seleccionado
                    onChanged: (newValue) {
                      setState(() {
                        selectedValue = newValue;
                      });
                    },
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: TextField(
                        onTap: () {
                          setState(() {
                            borderColor4 = const Color(0xFF02B5E7);
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Código para reclamar',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: borderColor4),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                const BorderSide(color: Color(0xFF02B5E7)),
                          ),
                          // fillColor: const Color(0xFFf4f4f4),
                          // filled: true,
                          labelStyle: const TextStyle(
                              fontFamily: "Aileron",
                              fontSize: 14,
                              color: Color(0xFF003366)),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 15.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.only(right: 10)),
                  const CustomFontAileronRegular(
                    text: '¿Requieres pasarela de pagos?',
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(), // Añadir espacio para alinear a la derecha
                  Padding(
                    padding: const EdgeInsets.only(
                        right:
                            40), // Espacio negativo para mover el Row a la izquierda
                    child: Row(
                      children: [
                        const Text("Si"),
                        CupertinoSwitch(
                          value: switchValue,
                          onChanged: (bool newValue) {
                            setState(() {
                              switchValue = newValue;
                            });
                            // Aquí puedes manejar la lógica cuando el usuario cambie el estado del Switch
                          },
                          activeColor: const Color(0xFF003366),
                          trackColor: const Color(0xFF04efef),
                          onLabelColor: const Color(0xFFFFFFFF),
                        ),
                        const Text("No"),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              if (!switchValue)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Padding(padding: EdgeInsets.only(right: 10)),
                        Icon(
                          Icons.check_circle_rounded,
                          color: Color(0xFF7DD218),
                        ),
                        SizedBox(width: 10),
                        Center(
                          child: CustomFontAileronBold(
                            text: "\$ 1.880",
                            fontSize: 0.043,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Llama al método para mostrar el mensaje estilo burbuja
                            showBubbleMessage(context);
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(
                              bottom: 9,
                              right: 8,
                              left: 0,
                            ),
                            child: Icon(
                              Icons.error, // Icono de alerta
                              color: Color(0xFF003366), // Color del icono
                              size: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Center(
                      child: CustomFontAileronRegular(
                        text: "Comisión pasarela de pagos",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              if (switchValue)
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(right: 10)),
                    Icon(
                      Icons.warning_rounded,
                      color: Color(0xFFCE8F21),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: CustomFontAileronRegular(
                          text:
                              "¡ Tu comunidad no podrá comprar tus productos con puntos !",
                          fontSize: 0.035,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              const SizedBox(height: 20),
              // Contenedor de precio final //////////////////
              if (switchValue)
                TextField(
                  onChanged: (value) {
                    Provider.of<ProductModel>(context, listen: false)
                        .updateProductName(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Link de tu producto si tienes marketplace',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Color(0xFF02B5E7)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Color(0xFF02B5E7)),
                    ),
                    prefixIcon: const Icon(
                      Icons.link,
                      color: Color(0xFF003366),
                    ),
                    // fillColor: const Color(0xFFf4f4f4), // Color de fondo
                    // filled: true,
                    labelStyle: const TextStyle(
                        fontFamily: "Aileron",
                        fontSize: 14,
                        color: Color(0xFF003366)),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 15.0),
                  ),
                ),
              const SizedBox(height: 20),
              const Padding(padding: EdgeInsets.only(right: 15)),
              const CustomFontAileronRegular(
                text:
                    'Reseña tu producto para atraer tu cliente final, esta descripción aparecera en los mensajes cuando nuestros Referentes refieren tu producto',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              TextField(
                maxLines: 4,
                textAlign: TextAlign.justify,
                decoration: InputDecoration(
                  labelText: 'Reseña de producto',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Color(0xFF02B5E7)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Color(0xFF02B5E7)),
                  ),
                  fillColor: const Color(0xFFffffff), // Color de fondo
                  filled: true,
                  labelStyle: const TextStyle(
                      fontFamily: "Aileron",
                      fontSize: 14,
                      color: Color(0xFF003366)),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 15.0),
                ),
              ),
              const SizedBox(height: 30),
              const CustomFontAileronBold(
                text: 'Agrega contenido formato historias para tu producto',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Padding(padding: EdgeInsets.only(right: 15)),
              const CustomFontAileronRegular(
                text:
                    'Tu comunidad de Referentes utiliza esta herramienta para atraer nuevos clientes orgánicamente el alcance se multiplica hasta por 500 por Referente que comparte este contenido',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 0),
              GestureDetector(
                onTap: _pickImageOrVideo,
                child: Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 90),
                  height: 320.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: _pickedFile != null
                        ? DecorationImage(
                            image: FileImage(File(_pickedFile!.path)),
                            fit: BoxFit.cover,
                          )
                        : const DecorationImage(
                            image: AssetImage(
                                'assets/images/images_login/historias.png'),
                            fit: BoxFit.cover,
                          ),
                  ),
                  child: const Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.camera_alt, color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const CustomFontAileronBold(
                text:
                    'Para un mejor resultado asigna una recompensa a esta acción',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Padding(padding: EdgeInsets.only(right: 15)),
              const CustomFontAileronRegular(
                text:
                    'Tu comunidad obtendrá una recompensa cada vez que comparte el contenido en sus redes sociales, aplica una única vez',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildRewardDropdown(),
                  buildPoints(),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  BtnNext(
                    press: () {
                      Provider.of<ProductModel>(context, listen: false)
                          .addProduct(
                        productModel.productName,
                        productModel.productPrice,
                        productModel.rewardPoints,
                        productModel.selectedImageProduct,
                        productModel.selectedImageProductMap,
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const ProfileScreens(selectedImageProduct: null),
                        ),
                      );
                    },
                    title: "Publicar",
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
