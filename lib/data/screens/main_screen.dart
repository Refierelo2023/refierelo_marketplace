// import 'dart:io';

import 'package:badges/badges.dart' as badge_package;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/ClipsViews/clips_views_scroll.dart';
import 'package:refierelo_marketplace/data/screens/Dialogs/reward_dialog.dart';
import 'package:refierelo_marketplace/data/screens/Dialogs/welcome_dialog.dart';
import 'package:refierelo_marketplace/data/screens/home/components/sidebar.dart';
import 'package:refierelo_marketplace/data/screens/screen_reward_user/widget_tabbar.dart';
import 'package:refierelo_marketplace/data/screens/screens_home__view/screens_home_view.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile.dart/profile_screens.dart';
import 'package:refierelo_marketplace/data/screens/display_refiere_aqui/display_refiere_aqui.dart';
import 'package:refierelo_marketplace/data/screens/search_screens/search_screens.dart';
import 'package:refierelo_marketplace/providers/referente_provider.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';


class MainScreen extends StatefulWidget {
  static const String routename = "MainScreen";
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _listOptions = <Widget>[
    const ScreensHomeView(),
    const SearchScreens(),
    const Spacer(),
    const ClipsViewsScroll(),
    const ProfileScreens(selectedImageProduct: null,),
  ];

  final List<String> _imagePaths = [
    "assets/images/images_main/home1.png",
    "assets/images/images_main/market1.png",
    "assets/images/images_main/logocircular.png",
    "assets/images/images_main/estadisticas1.png",
    "assets/images/images_main/recompensas1.png",
  ];

  final List<String> _selectedImagePaths = [
    "assets/images/images_main/home2.png",
    "assets/images/images_main/market2.png",
    "assets/images/images_main/logocircular.png",
    "assets/images/images_main/estadisticas2.png",
    "assets/images/images_main/recompensas2.png",
  ];  


  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MainScreenTop(
        setTab: (index) {},
        onTableRowsIconPressed: () {
          _displaysidebar(context);
        },
      ),
      body: _listOptions[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 60,// altura del menu inferior
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              children: [
                for (int index = 0; index < _listOptions.length; index++)
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        _onItemTapped(index);
                      },
                      child: Image.asset(
                        _selectedIndex == index
                            ? _selectedImagePaths[index]
                            : _imagePaths[index],
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ),
              ],
            ),
            InkWell(
              child: Positioned(
                bottom: 16,
                child: GestureDetector(
                  onTap: () {
                    _showRefiereAquiOverlay(context);
                  },
                  child: Transform.scale(
                    scale: 1.5,
                    child: Image.asset(
                      "assets/images/images_main/logocircular.png",
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }  

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _showRefiereAquiOverlay(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return const DisplayRefiereAqui();
      },
    );
  }

  void _displaysidebar(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return const DisplaySidebarVertical();
      },
    );
  }
}


class MainScreenTop extends StatelessWidget implements PreferredSizeWidget {
  const MainScreenTop({
    super.key,
    required this.setTab,
    required this.onTableRowsIconPressed,
  });

  final Function(int) setTab;
  final VoidCallback onTableRowsIconPressed;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.33;
    return Scaffold(
      backgroundColor: Colors.white,
      body: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomFontAileronBold(text: "Recompensas >"),
          ],
        ),
        actions: [
          const Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: badge_package.Badge(
                  badgeContent: Text( "9",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  showBadge: true,
                  child: Icon(
                    Icons.notifications,
                    size: 25,
                    color: Color(0xFF003366),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Builder(
              builder: (context) => IconButton(
                onPressed: onTableRowsIconPressed,
                icon: const Icon(
                  Icons.table_rows_rounded,
                  size: 25,
                  color: Color(0xFF003366),
                ),
              ),
            ),
          ),
        ],
        flexibleSpace: Center(
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04),
            child: Container(
              width: containerWidth,
              height: 43,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 8,
                  ),
                ],
              ),
              child: InkWell(
                onTap: () {
                  setTab(1);
                  setTab(2);
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (_) => const WelcomeDialog()).then((puntos) {
                    if (puntos != null) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return RewardDialog(
                              puntos: puntos.toString(),
                            );
                          });
                    }
                  });
                  // Adjust the index accordingly
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WidgetTabBar()
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.all(5)),
                    Image.asset(
                      'assets/images/images_main_screen_top/puntos.png',
                      height: 60,
                      width: 26,
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          context
                                  .watch<ReferenteProvider>()
                                  .referenteGlobal
                                  ?.puntos
                                  .toString() ??
                              '100',
                          style: const TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Aileron",
                          ),
                        ),
                      ),
                    ),
                    // No GestureDetector here, it's just a spacer
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
