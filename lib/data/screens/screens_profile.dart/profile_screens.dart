import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/app/app_data/story_data.dart';
import 'package:refierelo_marketplace/app/helper/page_animations/page_routes_animation.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_product_registration.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_screens_data.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile.dart/productos_comercios.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile.dart/screens_buy_points.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile.dart/screens_profile_tabbar.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile.dart/widget_botton_circular_product.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile.dart/widget_cirlce_product.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:refierelo_marketplace/widgets/story_feed/widgets_story_feed.dart';
import 'package:refierelo_marketplace/widgets/story_feed/widgets_user_story_profile.dart';


class ProfileScreens extends StatefulWidget {
  final File? selectedImageProduct;
  const ProfileScreens({
    Key? key,
    required this.selectedImageProduct,
  }) : super(key: key);

  @override
  ProfileScreensState createState() => ProfileScreensState();
}

class ProfileScreensState extends State<ProfileScreens>
    with TickerProviderStateMixin {
  String? selectedImageProduct;

  late TabController tabController;

  late AnimationController storyAnimationController;
  late Animation<Color?> storyColorAnimation;

  Rect? rect;

  final List<String> _stories = [
    "Product 1",
    "Product 2",
    "Product 3",
    "Product 4"
  ];

  final Duration animationDuration = const Duration(seconds: 1);

  // void onSaveImageProduct(String productName) {
  //   final selectedImage = widget.selectedImageProduct;
  //   if (selectedImage != null) {
  //     Provider.of<ProductModel>(context, listen: false)
  //         .selectedImageProductMap[productName] = selectedImage;
  //   }
  //   Navigator.of(context).popUntil((route) => route.isFirst);
  // }

  // Future<void> uploadImageAndNavigate(BuildContext context) async {
  //   try {
  //     // Verificar si selectedImageProduct es nulo
  //     if (widget.selectedImageProduct == null) {
  //       // print('No hay ninguna imagen seleccionada.');
  //       return;
  //     }
  //     // Abre el archivo de la imagen seleccionada
  //     File? imageFile = widget.selectedImageProduct;

  //     // Convierte la imagen a bytes para enviar al servidor
  //     List<int> imageBytes = await imageFile!.readAsBytes();

  //     // Codifica la imagen a base64
  //     String base64Image = base64Encode(imageBytes);

  //     // Configura la URL del servidor
  //     Uri serverUrl = Uri.parse("http://5.189.161.131:5000/webhook");

  //     // Configura el cuerpo de la solicitud
  //     Map<String, dynamic> requestBody = {
  //       "image": base64Image,
  //       // Aquí puedes agregar más datos, como el usuario que subió la historia
  //     };

  //     // Realiza la solicitud POST al servidor
  //     http.Response response = await http.post(
  //       serverUrl,
  //       body: json.encode(requestBody),
  //       headers: {"Content-Type": "application/json"},
  //     );
  //     // Verifica si la solicitud fue exitosa (código de estado 200)
  //     if (response.statusCode == 200) {
  //       Navigator.of(context).push(
  //         MaterialPageRoute(
  //           builder: (context) => WidgetCircleProduct(
  //               nameproduct: "", imageProduct: widget.selectedImageProduct),
  //         ),
  //       );
  //     } else {
  //       // Maneja el caso en que la carga al servidor no fue exitosa
  //       print("Error en la carga al servidor: ${response.statusCode}");
  //     }
  //   } catch (error) {
  //     print("Error: $error");
  //   }
  // }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    storyAnimationController =
        AnimationController(vsync: this, duration: animationDuration);
    storyColorAnimation = ColorTween(begin: Colors.black12, end: Colors.black)
        .animate(storyAnimationController);
    storyAnimationController.addListener(() {
      setState(() {});
    });
  }

  void onStoryItemTap(Rect? reactPoint, int index) {
    if (reactPoint != null) {
      setState(() => rect = reactPoint);
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        setState(() => rect =
            rect!.inflate(1.3 * MediaQuery.of(context).size.longestSide));
        storyAnimationController.forward();
        Future.delayed(animationDuration, () {
          Navigator.of(context)
              .push(
            FadeRouteBuilder(
              page: WidgetsStoryFeed(
                stories: stories,
                herotagString: 'index$index',
              ),
            ),
          )
              .then((value) {
            setState(() => rect = null);
          });
        });
      });
    }
  }

  @override
  void dispose() {
    storyAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double buttonPaddingHorizontalPercentage = 0.015;
    final productList = Provider.of<ProductModel>(context).productList;
    final userData = Provider.of<UserDataProvider>(context).userData;
    // print("Building WidgetDisplayMenuStory");
    return Consumer<ProductModel>(builder: (context, productModel, child) {
      return DefaultTabController(
        initialIndex: 1,
        length: 2,
        child: Stack(
          children: [
          Scaffold(
            backgroundColor: Colors.white,
            body: ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 3,
                            child: WidgetsUserStoryProfile(
                              backgroundImage:
                              const NetworkImage(
                                  "https://i.pinimg.com/474x/6e/d0/b5/6ed0b51833ee7affe0dfd37a531b2431.jpg"),
                              setRectPoint: (rectPoint) {
                                setState(() {
                                  rect = rectPoint;
                                });
                                int index = _stories.indexOf("");
                                onStoryItemTap(rect, index);
                              },
                              index: 0,
                              onStoryItemTap: onStoryItemTap,
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 3,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ScreensBuyPoints(),
                                  ),
                                );
                              },
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CustomFontAileronBold(text: "2.000"),
                                  CustomFontAileronRegular(
                                    text: "Recompensas",
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 3,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ScreensProfileTabBar(),
                                  ),
                                );
                              },
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CustomFontAileronBold(text: "1.000"),
                                  CustomFontAileronRegular(text: "Referentes"),
                                ],
                              ),
                            ),
                          ),
                          const Flexible(
                            fit: FlexFit.tight,
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CustomFontAileronBold(text: "800     "),
                                CustomFontAileronRegular(
                                  text: "Referidos      ",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    /////////////////////////////////////////////////////////////// Textos perfil
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        top: 5,
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: CustomFontAileronBold2(
                          text: userData.nombreComercial,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: CustomFontAileronRegular2(
                              text: userData.ciudad,
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.center,
                          child: CustomFontAileronRegular2(
                            text: " - ",
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: CustomFontAileronRegular2(
                            text: userData.pais,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 0), // espacio
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: CustomFontAileronRegular(
                          text: userData.presentacion,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(children: [
                          const Icon(
                            Icons.link,
                            color: Color(0xFF0000FF),
                          ),
                          const SizedBox(width: 8),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: CustomFontAileronRegularblue(
                              text: userData.web,
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(children: [
                          const Icon(
                            Icons.link,
                            color: Color(0xFF0000FF),
                          ),
                          const SizedBox(width: 8),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: CustomFontAileronRegularblue(
                              text: userData.instagram,
                            ),
                          ),
                        ]),
                      ),
                    ),
                    const SizedBox(height: 5),
                    // Botón "Editar Perfil" y "Compartir"
                    Row(
                      children: [
                        Expanded(
                          flex: 6, // 60% de la pantalla
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 5),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const LoginScreensData(),
                                  ),
                                );
                              },
                              child: Container(
                                constraints: BoxConstraints(
                                  maxWidth: MediaQuery.of(context).size.width,
                                ),
                                padding: EdgeInsets.symmetric(
                                  vertical: MediaQuery.of(context).size.width *
                                      buttonPaddingHorizontalPercentage,
                                  horizontal:
                                      MediaQuery.of(context).size.width *
                                          buttonPaddingHorizontalPercentage,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xFF02b5e7),
                                      Color(0xFF003366),
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Editar Perfil",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFFffffff),
                                      fontFamily: "Aileron",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4, //30 % de la pantalla
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20, left: 5),
                            child: InkWell(
                              onTap: () {},
                              child: FractionallySizedBox(
                                widthFactor: 1,
                                child: Container(
                                  constraints: BoxConstraints(
                                    maxWidth: MediaQuery.of(context).size.width,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    vertical:
                                        MediaQuery.of(context).size.width *
                                            buttonPaddingHorizontalPercentage,
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            buttonPaddingHorizontalPercentage,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color(0xFFf8e43e),
                                        Color(0xFFce8f21),
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                    ),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.attach_money_sharp,
                                        color: Colors.white,
                                        size: 14,
                                      ),
                                      Center(
                                        child: Text(
                                          "Compartir",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFFffffff),
                                            fontFamily: "Aileron",
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star_border_rounded),
                            CustomFontAileronSemiBold(
                              text: " Nuestros Productos",
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 110,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              SizedBox(
                                height: 110,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      for (String productName in productList)
                                        Padding(
                                          padding: const EdgeInsets.only(right: 5.0),
                                          child: WidgetCircleProduct(
                                            nameproduct: productName,
                                            imageProduct: Provider.of<
                                                        ProductModel>(context)
                                                    .selectedImageProductMap[
                                                productName],
                                          ),
                                        ),
                                      const WidgetBottonCircularProduct(),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    ///////////////////////////////////////////////////////////////////////////////////
                    //Referir y Comprar
                    const TabBar(
                      labelColor: Color(0xFF003366),
                      unselectedLabelColor: Colors.black,
                      indicatorColor: Color(0xFF003366),
                      tabs: <Widget>[
                        Tab(
                            icon: Text(
                          "Referir",
                          style: TextStyle(fontFamily: "Aileron", fontSize: 17),
                        )),
                        Tab(
                            icon: Text(
                          "Comprar",
                          style: TextStyle(fontFamily: "Aileron", fontSize: 17),
                        ))
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 2.2,
                      child: const TabBarView(
                        children: [
                          Center(
                            child: ProductosComercios(referir: true),
                          ),
                          Center(
                            child: ProductosComercios(referir: false),
                          ),
                        ],
                      ),
                    ),
                  ], //children
                ),
              ],
            ),
          ),          
        ]),
      );
    });
  }

  Widget rippleAnimation() {
    if (rect == null) {
      return const Offstage();
    }
    return AnimatedPositioned.fromRect(
      rect: rect!,
      duration: animationDuration,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: storyColorAnimation.value,
        ),
      ),
    );
  }
}
