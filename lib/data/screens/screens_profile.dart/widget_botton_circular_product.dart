import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_product_registration.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class WidgetBottonCircularProduct extends StatefulWidget {
  const WidgetBottonCircularProduct({
    super.key,
  });

  @override
  State<WidgetBottonCircularProduct> createState() =>
      _WidgetBottonCircularProductState();
}

class _WidgetBottonCircularProductState
    extends State<WidgetBottonCircularProduct> with TickerProviderStateMixin {
  Rect? rect;
  String selectedCategory = '';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 110,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const LoginProductRegistration()));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              child: const Icon(
                Icons.add_rounded,
                size: 25,
                color: Color(0xFF000000),
              ),
            ),
            const SizedBox(height: 5),
            const CustomFontAileronRegular(
              text: "Agregar Producto",
              fontSize: 0.030,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
