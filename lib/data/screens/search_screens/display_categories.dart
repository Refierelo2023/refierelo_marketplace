import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_list_categories.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:refierelo_marketplace/widgets/search_box.dart';
import 'package:refierelo_marketplace/widgets/widget_botton_select.dart';


class WidgetDisplayCategories extends StatefulWidget {  
  const WidgetDisplayCategories({super.key,});

  @override
  WidgetDisplayCategoriesState createState() => WidgetDisplayCategoriesState();
}

class WidgetDisplayCategoriesState extends State<WidgetDisplayCategories> {
  List<bool> isSelectedList = List.filled(38, false);
  List<String> displayedCategories = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    displayedCategories = List.from(allCategories);
    searchController.addListener(filterCategories);
  }

  void filterCategories() {
    String query = searchController.text.toLowerCase();
    setState(() {
      if (query.isEmpty) {
        displayedCategories = List.from(allCategories);
      } else {
        displayedCategories = allCategories
            .where((category) => category.toLowerCase().contains(query))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8, right: 8),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.60,
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
            SearchBox(
              controller: searchController,             
            ),
            const SizedBox(height: 5.0),
            const SizedBox(height: 1),
            Expanded(
              child: ListView.builder(
                itemExtent: 30,
                itemCount: displayedCategories.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        for (int i = 0; i < isSelectedList.length; i++) {
                          isSelectedList[i] = i == index;
                        }
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 10.0),
                          ),
                          Expanded(
                            child: CustomFontAileronRegular(
                              text: displayedCategories[index],
                            ),
                          ),
                          WidgetBottonSelect(
                            isSelected: isSelectedList[index],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
