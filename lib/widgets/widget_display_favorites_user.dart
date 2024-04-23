import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile_user/profile_screen_user.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:refierelo_marketplace/widgets/widget_botton_select.dart';

class WidgetDisplayFavoritesUser extends StatefulWidget {
  final Map<String, IconData> categoryIcons;
  final String nameCategorie;
  final IconData icon;
  final bool isSelected;

  const WidgetDisplayFavoritesUser({
    required this.categoryIcons,
    required this.nameCategorie,
    required this.icon,
    required this.isSelected,
    super.key,
  });

  @override
  WidgetDisplayFavoritesUserState createState() =>
      WidgetDisplayFavoritesUserState();
}

void onCategorySelected(BuildContext context, String categoryName) {
  final selectedCategory =
      Provider.of<SelectedCategory>(context, listen: false);
  selectedCategory.setSelectedCategory(categoryName);
}

class WidgetDisplayFavoritesUserState
    extends State<WidgetDisplayFavoritesUser> {
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

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.09, // Adjust the height as needed
                child: _buildContainerC(
                  index: 0,
                  nameCategorie: widget.nameCategorie,
                  subtitle: "Guardar Favoritos >        ",
                  icon: widget.icon,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContainerC({
    required int index,
    required String nameCategorie,
    required String subtitle,
    required IconData icon,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          // selectOnly(index);
          // toggleVisibility();
        },
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
              horizontal: MediaQuery.of(context).size.width * 0.04,
              vertical: MediaQuery.of(context).size.width * 0.004,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
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
                  child: Icon(
                    icon,
                    size: MediaQuery.of(context).size.width * 0.06,
                    color: const Color(0xFFffffff), // Color del icono
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomFontAileronBold(
                            text: nameCategorie,
                          ),
                          CustomFontAileronRegular2(
                            text: subtitle,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,                        
                        children: [
                          WidgetBottonSelect(
                            isSelected: isButtonSelectedList[index],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
