import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/Mi_Actividad/components/comparte_y_gana_tab.dart';
import 'package:refierelo_marketplace/data/screens/Mi_Actividad/components/mi_actividad_tab.dart';
import 'package:refierelo_marketplace/data/screens/screen_reward_user/recompensas_tab.dart';
import 'package:refierelo_marketplace/data/screens/screens_home__view/screens_announcements.dart';
import 'package:refierelo_marketplace/data/screens/search_screens/search_screens.dart';

class WidgetTabBar extends StatefulWidget {
  const WidgetTabBar({super.key});

  @override
  WidgetTabBarState createState() => WidgetTabBarState();
}

class WidgetTabBarState extends State<WidgetTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController; // controlador para index tabBar
  Key appBarKey = UniqueKey(); // Nueva clave para el AppBar

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);

    _tabController.addListener(() {      
      setState(() {
        appBarKey = UniqueKey();
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          key: appBarKey,// clava para cambiar de color el icono según el index
          toolbarHeight: 35,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: getAppBarIconColor(_tabController.index),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const MyScreen(),
                ),
              );
            },
          ),
          flexibleSpace: AnimatedBuilder(
            animation: _tabController.animation!,
            builder: (context, child) {
              return Container(
                decoration: getAppBarDecoration(_tabController.index),
              );
            },
          ),
        ),
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 1,
              child: Column(
                children: [
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        const Center(child: SearchScreens()),
                        Center(
                            child: RecompensasTab(
                                changeTab: () {},
                                tabController: _tabController)),
                        const Center(child: MiActividadTab()),
                        const Center(child: ComparteYGanaTab()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Decoration getAppBarDecoration(int tabIndex) {
    if (tabIndex == 0 || tabIndex == 1) {
      // Index 0 y 1
      return const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFF5F6F9), Color(0xFFF5F6F9)],
          begin: Alignment.bottomLeft,
          end: Alignment.bottomRight,
        ),
      );
    } else if (tabIndex == 2) {
      // Index 2
      return const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff003366), Color(0xff02B5E7)],
          begin: Alignment.bottomLeft,
          end: Alignment.bottomRight,
        ),
      );
    } else {
      // Index 3 y 4
      return const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff003366), Color(0xff003366)],
          begin: Alignment.bottomLeft,
          end: Alignment.bottomRight,
        ),
      );
    }
  }

  Color getAppBarIconColor(int tabIndex) {
    return tabIndex == 2 || tabIndex == 3
        ? Colors.white
        : Colors.black; // Cambiar el color del ícono según el índice
  }
}
