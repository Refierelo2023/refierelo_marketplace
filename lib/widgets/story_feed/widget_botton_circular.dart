import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile_user/profile_screen_user.dart';
import 'package:refierelo_marketplace/data/screens/search_screens/display_categories.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class WidgetBottonCircular extends StatefulWidget {
  const WidgetBottonCircular({
    super.key,
 
  });

  @override
  State<WidgetBottonCircular> createState() => _WidgetBottonCircularState();
}

class _WidgetBottonCircularState extends State<WidgetBottonCircular>
    with TickerProviderStateMixin {
  Rect? rect;
  String selectedCategory = '';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(          
      width: screenWidth,      
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return WidgetDisplayCategories(
                onCategorySelected: (category) {
                  Provider.of<SelectedCategory>(context, listen: false)
                      .setSelectedCategory(category);
                  Navigator.pop(context);
                },
              );
            },
          );
        },
        child: Align(
          alignment: Alignment.bottomLeft,          
          child: Column(         
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
                text: "Nueva \n Categoria", 
                fontSize: 0.030, 
                textAlign:TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
