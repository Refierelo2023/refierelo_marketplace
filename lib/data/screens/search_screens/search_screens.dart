import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_list_categories.dart';
import 'package:refierelo_marketplace/data/screens/search_screens/display_categories.dart';
import 'package:refierelo_marketplace/data/screens/search_screens/screens_user_search_comprar.dart';
import 'package:refierelo_marketplace/data/screens/search_screens/screens_user_search_referir.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:refierelo_marketplace/widgets/search_box.dart';


class SearchScreens extends StatefulWidget {
  const SearchScreens({super.key});

  @override
  SearchScreensState createState() => SearchScreensState();
}

class SearchScreensState extends State<SearchScreens> with SingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  void onReferirButtonPressed() {
    _tabController.animateTo(0); // Índice del tab referir
  }

  void onComprarButtonPressed() {
    _tabController.animateTo(1); // Índice del tab comprar
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          backgroundColor: const Color(0xFFFAFAFA),
          automaticallyImplyLeading: false,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: SearchBox(controller: searchController),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4, left: 8, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            spreadRadius: 0.08,
                            blurRadius: 30,
                            offset: const Offset(0, 0.5))
                      ]),
                      child: ElevatedButton(
                        onPressed: () {
                          // Acción al presionar el botón de Filtrar
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 0.0)),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.format_list_bulleted_sharp,
                              color: Color(0XFF003366),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              spreadRadius: 0.08,
                              blurRadius: 30,
                              offset: const Offset(0, 0.5)),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return WidgetDisplayCategories(
                                allCategories: allCategories,
                                searchController: searchController,
                              );// llamando contenedor vertical
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFffffff),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            padding:const EdgeInsets.symmetric(horizontal: 10.0)),
                        child: const CustomFontAileronRegular(
                          text: 'Categorías',
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            spreadRadius: 0.08,
                            blurRadius: 30,
                            offset: const Offset(0, 0.5))
                      ]),
                      child: ElevatedButton.icon(
                        onPressed: onReferirButtonPressed,
                        icon: const Icon(
                          Icons.copyright_outlined,
                          color: Color(0xFF003366),
                        ),
                        label: const CustomFontAileronRegular(text: 'Referir'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              spreadRadius: 0.08,
                              blurRadius: 30,
                              offset: const Offset(0, 0.5)),
                        ],
                      ),
                      child: ElevatedButton.icon(
                        onPressed: onComprarButtonPressed,
                        icon: const Icon(
                          Icons.attach_money,
                          color: Color(0xFF003366),
                        ),
                        label: const CustomFontAileronRegular(text: 'Comprar'),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 10.0)),
                      ),
                    ),
                  ],
                ),
              ),              
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          ScreensUserSearchReferir(),
          ScreensUserSearchComprar(),
        ],
      ),
    );
  }
}
