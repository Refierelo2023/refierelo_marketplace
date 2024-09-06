import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/app/app_data/story_data.dart';
import 'package:refierelo_marketplace/app/helper/page_animations/page_routes_animation.dart';
import 'package:refierelo_marketplace/data/screens/Register/register_form.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile.dart/screens_buy_points.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile.dart/screens_profile_tabbar.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile_user/productos_usuario.dart';
import 'package:refierelo_marketplace/widgets/story_feed/widget_botton_circular.dart';
import 'package:refierelo_marketplace/widgets/story_feed/widget_list_categories_avatar.dart';
import 'package:refierelo_marketplace/widgets/story_feed/widgets_story_feed.dart';
import 'package:refierelo_marketplace/widgets/story_feed/widgets_user_story_profile.dart';

class ProfileScreensUser extends StatefulWidget {
  final Map<String, IconData> categoryIcons;
  
  const ProfileScreensUser({
    super.key,
    required this.categoryIcons, 
  });

  @override
  ProfileScreensUserState createState() => ProfileScreensUserState();
  
}

class ProfileScreensUserState extends State<ProfileScreensUser>

    with TickerProviderStateMixin {
  late AnimationController storyAnimationController;
  late Animation<Color?> storyColorAnimation;
  UserProfile? _user;
  Rect? rect;
  String selectedCategory = '';
  


  List<String> selectedCategories = [];

  final List<String> _stories = [
    "Product 1",
    "Product 2",
    "Product 3",
    "Product 4"
  ];

  final Duration animationDuration = const Duration(seconds: 1);

  @override
  void initState() {
    super.initState();
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
    // final productData = Provider.of<ProductData>(context, listen: false);    
    final selectedCategory = Provider.of<SelectedCategory>(context).selectedCategory;
    if (selectedCategory.isNotEmpty &&
        !selectedCategories.contains(selectedCategory)) {
      selectedCategories.add(selectedCategory);
    }
    double buttonPaddingHorizontalPercentage = 0.015;
    final userData = Provider.of<UserDataProviderUser>(context).userData;

    // print("Building WidgetDisplayMenuStory");
    return DefaultTabController(
      initialIndex: 0,
      length: 1,
      child: Stack(children: [
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
                            index: 1,
                            onStoryItemTap: (rect, index) {},
                            backgroundImage: NetworkImage(
                                user.profileImageUrl),
                            setRectPoint: (rectPoint) {
                              setState(() {
                                rect = rectPoint;
                              });
                              int index = _stories.indexOf("");
                              onStoryItemTap(rect, index);
                            },
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
                                  text: "Seguidores",
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
                                CustomFontAileronBold(text: "500"),
                                CustomFontAileronRegular(text: "Refiriendo"),
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
                        text: userData.firstName,
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
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 20.0),
                  //   child: Align(
                  //     alignment: Alignment.centerLeft,
                  //     child: Row(children: [
                  //       const Icon(
                  //         Icons.link,
                  //         color: Color(0xFF0000FF),
                  //       ),
                  //       const SizedBox(width: 8),
                  //       Align(
                  //         alignment: Alignment.centerLeft,
                  //         child: CustomFontAileronRegularblue(
                  //           text: userData.web,
                  //         ),
                  //       ),
                  //     ]),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 20.0),
                  //   child: Align(
                  //     alignment: Alignment.centerLeft,
                  //     child: Row(children: [
                  //       const Icon(
                  //         Icons.link,
                  //         color: Color(0xFF0000FF),
                  //       ),
                  //       const SizedBox(width: 8),
                  //       Align(
                  //         alignment: Alignment.centerLeft,
                  //         child: CustomFontAileronRegularblue(
                  //           text: userData.instagram,
                  //         ),
                  //       ),
                  //     ]),
                  //   ),
                  // ),
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
                                  builder: (context) => RegisterForm(                                                              
                                    msisdn: '',
                                  ),
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
                                horizontal: MediaQuery.of(context).size.width *
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
                            text: " Mis favoritos",
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
                              width: MediaQuery.of(context)
                                  .size
                                  .width, // Ancho finito para el Container
                              child: Row(
                                children: [
                                  Expanded(
                                    child: ListView.builder(
                                      itemCount: selectedCategories.length + 1, // +1 para agregar el WidgetBottonCircular
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        if (index < selectedCategories.length) {
                                          final category = selectedCategories[index];
                                          // Obtener el icono correspondiente de _getIconForCategory
                                          final IconData icon = getIconForCategory(category);                                                 
                                          return WidgetListCategoriesAvatar(
                                            icon:icon, // Pasar el icono obtenido
                                            nameCategorie: category,
                                            isSelected: true,
                                            categoryIcons: widget.categoryIcons,                                            
                                          );
                                        } else {
                                          // Agregar el WidgetBottonCircular al final de la lista
                                          return const Padding(
                                            padding: EdgeInsets.only(left: 5,),
                                            child: WidgetBottonCircular(),
                                          );
                                        }
                                      },
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
                  // SizedBox(
                  //   height: 110,
                  //   child: ListView.builder(
                  //     itemCount: _stories.length,
                  //     scrollDirection: Axis.horizontal,
                  //     itemBuilder: (context, index) {
                  //       return WidgetsUserStory(
                  //         index: index,
                  //         setRectPoint: (reactPoint) {
                  //           setState(() {
                  //             rect = reactPoint;
                  //           });
                  //           onStoryItemTap(rect, index);
                  //         },
                  //         onStoryItemTap: onStoryItemTap,
                  //       );
                  //     },
                  //   ),
                  // ),
                  ///////////////////////////////////////////////////////////////////////////////////
                  //Referir y Comprar
                  const TabBar(
                    labelColor: Color(0xFF003366),
                    unselectedLabelColor: Colors.black,
                    indicatorColor: Colors.transparent,
                    tabs: <Widget>[
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Icon(Icons.auto_awesome),
                            CustomFontAileronSemiBold(
                                text: " Productos que Recomiendo"),
                          ],
                        ),
                      ),
                      // Tab(
                      //     icon: Icon(Icons.library_books_outlined)
                      // )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 2.2,
                    child: const TabBarView(children: [
                      Center(
                        child: ProductosUsuario(
                          selectedCategories: [],
                        ),
                      ),
                    ]),
                  ),
                ], //children
              ),
            ],
          ),
        ),
        rippleAnimation()
      ]),
    );
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

  IconData getIconForCategory(String category) {
    Map<String, IconData> categoryIcons = {
      'Agricultura / ganadería': Icons.eco,
      'Artista': Icons.perm_contact_cal,
      'Belleza / cosmética': Icons.face,
      'Bancos': Icons.account_balance_rounded,
      'Cine / tv': Icons.movie,
      'Centros comerciales': Icons.business_outlined,
      'Compras y ventas': Icons.shopping_cart,
      'Comercio electrónico': Icons.phone_android_outlined,
      'Consultorio odontológico': Icons.badge_outlined,
      'Creador digital': Icons.photo_camera_front,
      'Editor': Icons.edit,
      'Educación': Icons.school,
      'Electrónica e informática': Icons.computer,
      'Emprendedor(a)': Icons.lightbulb_outline,
      'Espectáculos / eventos': Icons.event,
      'Farmacia y Droguería': Icons.local_pharmacy,
      'Ferretería y Construcción': Icons.build,
      'Fotógrafo(a)': Icons.camera_alt,
      'Hoteles y turismo': Icons.hotel,
      'Industria o manufactura': Icons.build_circle,
      'Licorería': Icons.local_drink,
      'Medio Ambiente': Icons.south_america_outlined,
      'Músico / Banda': Icons.music_note,
      'Medios de comunicación': Icons.live_tv_rounded,
      'Papelería / Miscelánea': Icons.article,
      'Productos de limpieza': Icons.clean_hands,
      'Peluquería': Icons.cut_rounded,
      'Restaurantes': Icons.restaurant,
      'Regalos sorpresa': Icons.card_giftcard,
      'Ropa (marca)': Icons.shopify_rounded,
      'Zapatos y accesorios': Icons.snowshoeing_rounded,
      'Salud / belleza': Icons.spa,
      'Servicio a vehículos': Icons.directions_car_filled_rounded,
      'Transporte y logística': Icons.local_shipping,
      'Servicios profesionales': Icons.business,
      'Servicios financieros': Icons.account_balance,
      'Supermercado': Icons.local_grocery_store,
      'Seguros': Icons.health_and_safety_rounded,
      'Taller automotriz': Icons.build_circle_outlined,
      'Teatro': Icons.contact_emergency_rounded,
      'Tienda comestibles': Icons.food_bank,
      'Tienda de mascotas': Icons.pets,
      'Tienda naturista': Icons.eco_outlined,
      'Venta Juguetes / libros': Icons.toys,
      'Venta de textiles': Icons.texture,
      'Venta por catálogo': Icons.view_list,
      'Otro': Icons.category,
    };
    // Obtener el icono correspondiente a la categoría
    IconData selectedIcon = categoryIcons[category] ?? Icons.category;
    return selectedIcon;
  }
}

class SelectedCategory extends ChangeNotifier {
  String _selectedCategory = '';

  String get selectedCategory => _selectedCategory;

  void setSelectedCategory(String category) {
    _selectedCategory = category;    
    notifyListeners();
  }
}
