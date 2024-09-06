import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_product_registration.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile_user/profile_screen_user.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:refierelo_marketplace/widgets/story_feed/animation_is_Liked.dart.dart';
import 'package:refierelo_marketplace/widgets/story_feed/widget_botton_circular.dart';
import 'package:refierelo_marketplace/widgets/story_feed/widget_display_share_history.dart';
import 'package:refierelo_marketplace/widgets/widget_display_favorites_user.dart';
import 'package:refierelo_marketplace/widgets/widgets_botton_comprar.dart';
import 'package:refierelo_marketplace/widgets/widgets_botton_referir.dart';
import 'package:video_player/video_player.dart';

class ClipsViews extends StatefulWidget {
  const ClipsViews({
    super.key,
  });

  @override
  State<ClipsViews> createState() => _ClipsViewsState();
}

class _ClipsViewsState extends State<ClipsViews>
    with TickerProviderStateMixin {
  bool isIconSelected = false;
  late VideoPlayerController _controller;

  List<String> selectedCategories = [];

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      'assets/video/story_feed/tbone.mp4',
    )..initialize().then((_) {
        setState(() {});
        _controller.play(); // Comienza la reproducción automáticamente
      });
  }

  void _onCategorySelected(String category) {
    setState(() {
      selectedCategories.add(category);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    var borderside = const BorderSide(
      color: Colors.white,
    );
    var borderRadius = BorderRadius.circular(11.r);
    OutlineInputBorder(borderSide: borderside, borderRadius: borderRadius);

    final productModel = Provider.of<ProductModel>(context, listen: false);// Modelo de datos LoginProductRegistration

    return Material(
        child: Container(
          color: Colors.black,
          child: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.black,
              body: Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                        flex: 0, // Flex del contenedor superior (10%)
                        child: Container(
                          color: Colors.transparent,
                        ),
                      ),
                      Expanded(
                        flex: 88, // Flex de la imagen (80%)
                        child: _controller.value.isInitialized
                            ? ClipRRect(
                                borderRadius: borderRadius,
                                child: AspectRatio(
                                  aspectRatio: _controller.value.aspectRatio,
                                  child: VideoPlayer(_controller),
                                ),
                              )
                            : Container(), // Placeholder para el video
                      ),
                      Expanded(
                        flex: 10, // Flex del Row inferior (10%)
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Flexible(
                              child: InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return const WidgetDisplayReferir();
                                    },
                                  );
                                },
                                child: const SizedBox(
                                  width: double.infinity,
                                  child: WidgetBottonReferir(),
                                ),
                              ),
                            ),
                            Flexible(
                              child: InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return WidgetDisplayComprar(
                                        imagePaths: productModel.selectedImageProductMap.values.map((file) => file.path).toList(),
                                      );
                                    },
                                  );
                                },
                                child: const SizedBox(
                                  width: double.infinity,
                                  child: WidgetBottonComprar(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),                
                  Padding(
                    padding: const EdgeInsets.only(right: 10, bottom: 120),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              // Acción para "Mi Favorito"
                            },
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      isIconSelected = !isIconSelected;
                                    });
                                    showModalBottomSheet(
                                      context: context,
                                      backgroundColor: const Color(0xFFffffff),
                                      isScrollControlled: true,
                                      builder: (context) {
                                        return CategorySelectionModal(
                                          categoryIcons: const {},
                                          selectedCategories: selectedCategories,
                                          onCategorySelected: _onCategorySelected,
                                        );
                                      },
                                    );
                                  },
                                  child: Image.asset(
                                    isIconSelected
                                        ? "assets/images/images_icons/star2.png"
                                        : "assets/images/images_icons/starwhite100.png",
                                    width: 29,
                                    height: 29,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                const CustomFontAileronRegularWhite(
                                  text: "Mi favorito",
                                  fontSize: 0.028,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 25),
                          const AnimationIsLiked(),
                          const SizedBox(height: 25),
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return const WidgetDisplayShareHistory(); // Ajusta según sea necesario
                                },
                              );
                              // Acción para "Publicar"
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/images_icons/comp2.png",
                                  width: 28,
                                  height: 28,
                                ),
                                const SizedBox(height: 3),
                                const CustomFontAileronRegularWhite(
                                  text: "Compartir",
                                  fontSize: 0.028,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
     
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

class CategorySelectionModal extends StatefulWidget {
  final Map<String, IconData> categoryIcons;
  final List<String> selectedCategories;
  final Function(String) onCategorySelected;

  const CategorySelectionModal({
    required this.categoryIcons,
    required this.selectedCategories,
    required this.onCategorySelected,
    super.key,
  });

  @override
  CategorySelectionModalState createState() => CategorySelectionModalState();
}

class CategorySelectionModalState extends State<CategorySelectionModal> {
  @override
  Widget build(BuildContext context) {
    final selectedCategory =
        Provider.of<SelectedCategory>(context).selectedCategory;
    if (selectedCategory.isNotEmpty &&
        !widget.selectedCategories.contains(selectedCategory)) {
      widget.selectedCategories.add(selectedCategory);
    }
    return SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 9),
                height: 5,
                decoration: const BoxDecoration(
                  color: Color(0xFF666666),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                width: MediaQuery.of(context).size.width * 0.12,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: widget.selectedCategories.length + 1,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  if (index < widget.selectedCategories.length) {
                    final category = widget.selectedCategories[index];
                    final IconData icon = getIconForCategory(category);
                    return WidgetDisplayFavoritesUser(
                      icon: icon,
                      nameCategorie: category,
                      isSelected: true,
                      categoryIcons: widget.categoryIcons,
                    );
                  } else {
                    return const Padding(
                      padding: EdgeInsets.only(left: 18, bottom: 5),
                      child: WidgetBottonCircular(),
                    );
                  }
                },
              ),
            ],
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
