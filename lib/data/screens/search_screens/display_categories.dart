import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:refierelo_marketplace/widgets/search_box.dart';
import 'package:refierelo_marketplace/widgets/widget_botton_select.dart';

class DisplayCategories extends StatelessWidget {
  final List<String> allCategories;
  final TextEditingController searchController;

const DisplayCategories({
    super.key,
    required this.allCategories,
    required this.searchController,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return DisplayCategories(
                allCategories: allCategories,
                searchController: searchController,
            );
          }
        );
      },
    );
  }
}
class WidgetDisplayCategories extends StatefulWidget {
   final List<String> allCategories;
  final TextEditingController searchController;
  
  const WidgetDisplayCategories({
    super.key,
    required this.allCategories,
    required this.searchController,
  });

  @override
  WidgetDisplayCategoriesState createState() => WidgetDisplayCategoriesState();
}

class WidgetDisplayCategoriesState extends State<WidgetDisplayCategories> {
  late List<bool> isButtonSelectedList;

  @override
  void initState() {
    super.initState();
    isButtonSelectedList = List.generate(widget.allCategories.length, (index) => false);
  }

  void selectOnly(int index) {
    setState(() {
      for (int i = 0; i < isButtonSelectedList.length; i++) {
        isButtonSelectedList[i] = (i == index);
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
          )),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.60,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 9),
              height: 5, // Altura de la línea
              decoration: const BoxDecoration(
                color: Color(0xFF666666), // Color de la línea
                borderRadius:
                    BorderRadius.all(Radius.circular(20)), // Bordes redondeados
              ),
              width: MediaQuery.of(context).size.width * 0.12, // Ancho de la línea (ejemplo: 50% del ancho de la pantalla)
            ),
            SearchBox(controller: widget.searchController),
            const SizedBox(height: 5.0),
            const SizedBox(height: 1),
                Expanded(
                  child: ListView.builder(
                    itemExtent: 30,
                    itemCount: widget.allCategories.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            for (int i = 0; i < isButtonSelectedList.length; i++) {
                              isButtonSelectedList[i] = i == index;
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
                                  text: widget.allCategories[index],
                                ),
                              ),
                              WidgetBottonSelect(
                                isSelected: isButtonSelectedList[index],
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
