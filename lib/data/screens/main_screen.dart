import 'package:badges/badges.dart' as badge_package;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/Dialogs/reward_dialog.dart';
import 'package:refierelo_marketplace/data/screens/Dialogs/welcome_dialog.dart';
import 'package:refierelo_marketplace/data/screens/Mi_Actividad/mi_actividad.dart';
import 'package:refierelo_marketplace/data/screens/Register/options_register_screen.dart';
import 'package:refierelo_marketplace/data/screens/home/components/sidebar.dart';
import 'package:refierelo_marketplace/data/screens/home/homev.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile.dart/profile_screens.dart';
import 'package:refierelo_marketplace/data/screens/display_refiere_aqui/display_refiere_aqui.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile.dart/screens_buy_points.dart';
import 'package:refierelo_marketplace/providers/referente_provider.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:refierelo_marketplace/widgets/widgets_botton_referir.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _listOptions = <Widget>[
    Homev(setTab: (index) {}),
    const OptionsRegisterScreen(msisdn: ""),
    const WidgetDisplayReferir(),
    const MiActividadScreen(),
    const ProfileScreens(),
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
          }),
      body: _listOptions[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 60,
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
            Positioned(
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
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
            child: Container(
              width: containerWidth,
              height: 38,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 6,
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
                      builder: (context) => const ScreensBuyPoints(),
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 2, right: 3)),
                    Image.asset(
                      'assets/images/images_main_screen_top/puntos.png',
                      height: 55,
                      width: 25,
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          context
                                  .watch<ReferenteProvider>()
                                  .referenteGlobal
                                  ?.puntos
                                  .toString() ??
                              '5.000',
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