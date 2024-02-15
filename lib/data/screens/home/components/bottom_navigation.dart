import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  _BottomNavigation createState() => _BottomNavigation();
}

class _BottomNavigation extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff0096C2), Color(0xff00DFEE)]
        )
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/images/bottom_navigation/casa.png'
              )
            ),
            label: 'Referir'
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/images/bottom_navigation/shopping.png'
              )
            ),
            label: 'Tienda'
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/images/bottom_navigation/grafica.png'
              )
            ),
            label: 'Gestión'
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/images/bottom_navigation/recompensas.png'
              )
            ),
            label: 'Recompensas'
          )
        ],
      ),
    );
  }
}