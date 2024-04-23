import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile_user/profile_screen_user.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile_user/widget_display_favorites.dart';

class WidgetListCategoriesAvatar extends StatefulWidget {
  final IconData icon;
  final String nameCategorie;
  final bool isSelected;
  final Function()? onTap;
  final Map<String, IconData> categoryIcons;

  const WidgetListCategoriesAvatar({
    required this.icon,
    required this.nameCategorie,
    required this.isSelected,
    required this.categoryIcons,
    this.onTap,
    super.key,
  });

  @override
  State<WidgetListCategoriesAvatar> createState() =>
      _WidgetListCategoriesAvatarState();
}

void onCategorySelected(BuildContext context, String categoryName) {
  final selectedCategory =
      Provider.of<SelectedCategory>(context, listen: false);

  selectedCategory.setSelectedCategory(categoryName);
}

class _WidgetListCategoriesAvatarState
    extends State<WidgetListCategoriesAvatar> {
  Rect? rect;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildCircularContainer(
            icon: widget.icon,
            nameCategorie: widget.nameCategorie,
          ),
        ],
      ),
    );
  }

  Widget _buildCircularContainer({
    required IconData icon,
    required String nameCategorie,
  }) {
    return SizedBox(
      width: 80,
      height: 110,
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return WidgetDisplayFavorites(
                selectedIcon: widget.icon,
                nameCategorie: widget.nameCategorie,
              ); // Aquí se llama al widget
            },
          );
          // print('Tapped $nameCategorie');
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
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
              child: Icon(
                icon,
                size: 25,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
            CustomFontAileronRegular(
              text: nameCategorie,
              fontSize: 0.030,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
