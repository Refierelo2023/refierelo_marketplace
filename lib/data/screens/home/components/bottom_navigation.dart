import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/Mi_Actividad/components/mi_actividad_tab.dart';
import 'package:refierelo_marketplace/data/screens/screens_home__view/screens_home_view.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile.dart/profile_screens.dart';
import 'package:refierelo_marketplace/data/screens/home/scroll_marcas_sugeridas.dart';
import 'package:refierelo_marketplace/data/screens/search_screens/search_screens.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key});

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0; // Índice del ícono actualmente seleccionado

  final List<Widget> _screens = [
    // Aquí puedes colocar las pantallas correspondientes a cada ícono
    const ScreensHomeView(),
    const SearchScreens(),
    const ScrollMarcasSugeridas(),
    const MiActividadTab(),
    const ProfileScreens(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(color: Color(0xFF003366)),
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        unselectedIconTheme: const IconThemeData(color: Colors.black),
        currentIndex: _currentIndex, // Índice actual
        onTap: (index) {
          // Cambiar el índice al ser presionado
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/images_main/home1.png',
              height: 30,
              width: 30,
            ),
            activeIcon: Image.asset(
              'assets/images/images_main/home2.png',
              height: 30,
              width: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/images_main/market1.png',
              height: 30,
              width: 30,
            ),
            activeIcon: Image.asset(
              'assets/images/images_main/market2.png',
              height: 30,
              width: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/images_main/logocircular.png",
              height: 45,
              width: 45,
            ),
            activeIcon: Image.asset(
              "assets/images/images_main/logocircular.png",
              height: 30,
              width: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/images_main/estadisticas1.png',
              height: 30,
              width: 30,
            ),
            activeIcon: Image.asset(
              'assets/images/images_main/estadisticas2.png',
              height: 30,
              width: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/images_main/recompensas1.png',
              height: 30,
              width: 30,
            ),
            activeIcon: Image.asset(
              'assets/images/images_main/recompensas2.png',
              height: 30,
              width: 30,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
