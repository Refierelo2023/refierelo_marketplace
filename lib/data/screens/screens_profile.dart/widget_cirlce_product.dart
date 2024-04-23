import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_product_registration.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile.dart/profile_screens.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile.dart/widget_display_product.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:refierelo_marketplace/widgets/widget_botton_select.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class WidgetCircleProduct extends StatefulWidget {
  final String nameproduct; 
  final dynamic imageProduct;    



  const WidgetCircleProduct({
    required this.nameproduct,
    required this.imageProduct,
  
    super.key,
  });

  @override
  State<WidgetCircleProduct> createState() => _WidgetCircleProductState();
}

class _WidgetCircleProductState extends State<WidgetCircleProduct> {
  bool _showMenu = false;
  Rect? rect;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildCircularContainer(
            nameProduct: widget.nameproduct,           
          ),
        ],
      ),
    );
  }

  
  Widget buildCircularContainer({
    required String nameProduct,   
  }) {
    return SizedBox(
      width: 80,
      height: 110,
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return WidgetDisplayProduct(
                nameProduct: nameProduct,
              ); 
            },
          );
        },
        onLongPress: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return const WidgetDisplayMenuProduct();
            },
          );
          _showMenu = true;
        },
        onLongPressEnd: (_) {
          setState(() {
            _showMenu = false;
          });
        },
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: widget.imageProduct != null
                 ? ClipRRect(
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width),
                      child: Image.file(
                        widget.imageProduct,
                        width: 60, // Ajusta el tamaño de la imagen según sea necesario
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    )
                  : Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        gradient: const LinearGradient(
                          colors: [Color(0XFF003366), Color(0XFF02b5e7)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        border: Border.all(
                          color: const Color(0xFF02B5E7),
                          width: 1.0,
                        ),
                      ),
                    ),
            ),
            if (widget.imageProduct == null) // Mostrar el icono solo si no hay una imagen seleccionada
            const Positioned(
              top: 26, // Ajusta la posición vertical del icono
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 25,
              ),
            ),
            const SimpleCircularProgressBar(
              fullProgressGradient: SweepGradient(
                tileMode: TileMode.decal,
                colors: [
                  Color(0xFF02b5e7),
                  Color(0xFF003366),
                  Color(0xFF02b5e7),
                ],
              ),
              size: 70,
              progressStrokeWidth: 4,
              backColor: Colors.transparent,
              animationDuration: 1,
              maxValue: 100,
            ),
            Positioned(
              bottom: 18,
              left: 0,
              right: 0,
              child: CustomFontAileronRegular(
                text: nameProduct,
                fontSize: 0.030,
                textAlign: TextAlign.center,
              ),
            ),
            if (_showMenu) ...[
              const Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: WidgetDisplayMenuProduct(),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class WidgetDisplayMenuProduct extends StatefulWidget {
  const WidgetDisplayMenuProduct({super.key});

  @override
  WidgetDisplayMenuProductState createState() =>
      WidgetDisplayMenuProductState();
}

class WidgetDisplayMenuProductState extends State<WidgetDisplayMenuProduct> {
  late List<bool> isButtonSelectedList;
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    isButtonSelectedList = List.generate(2, (index) => false);
  }

  void selectOnly(int index) {
    setState(() {
      for (int i = 0; i < isButtonSelectedList.length; i++) {
        isButtonSelectedList[i] = (i == index);
      }
    });
  }

  void toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  Future<void> pickImage(
      BuildContext context, 
      Function(String) setImagePath
    ) async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {  
      String selectedImageProduct = pickedFile.path;          
      setImagePath(selectedImageProduct);

       Provider.of<ProductModel>(context, listen: false)
          .updateSelectedImage(File(selectedImageProduct));

      // Abre WidgetProductEditImage después de seleccionar la imagen
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfileScreens(
            selectedImageProduct: File(selectedImageProduct),
            // setImagePath: setImagePath,
          ),
        ),
      );
    }
  }

  Widget buildContainer({
    required int index,
    required String title,
    required String subtitle,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Ink(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.transparent,
                spreadRadius: 0,
                blurRadius: 20,
                offset: Offset(0, 0),
              ),
            ],
            border: Border.all(
              color: isButtonSelectedList[index]
                  ? Colors.transparent
                  : Colors.white,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
              vertical: MediaQuery.of(context).size.width * 0.010,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFf1f1f1),
                  ),
                  child: Icon(
                    icon,
                    size: MediaQuery.of(context).size.width * 0.06,
                    color: const Color(0xFF000000), // Color del icono
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomFontAileronBold(text: title),
                      CustomFontAileronRegular2(
                        text: subtitle,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                WidgetBottonSelect(
                  isSelected: isButtonSelectedList[index],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
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
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  buildContainer(
                    index: 0,
                    title: 'Imagen de portada',
                    subtitle: 'Agrear imagen >',
                    icon: Icons.photo_filter_sharp,
                    onTap: () {
                      selectOnly(0);
                      toggleVisibility();

                      pickImage(context, (setImagePath) {});
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.03,
                  ),
                  buildContainer(
                      index: 1,
                      title: 'Borrar Producto',
                      subtitle: 'Eliminar Contenido >',
                      icon: Icons.delete_outline_outlined,
                      onTap: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

