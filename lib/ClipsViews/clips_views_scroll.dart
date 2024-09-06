import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/ClipsViews/clips_views.dart';

class ClipsViewsScroll extends StatelessWidget {
  const ClipsViewsScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white, // Color de fondo del Scaffold, ajusta según necesites
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: PageView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 10, // Muestra 10 veces el widget ClipsViews
                itemBuilder: (context, index) {
                  return const ClipsViews(); // Instancia del widget ClipsViews
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
