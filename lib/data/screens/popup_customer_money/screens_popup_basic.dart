// screens_popup_basic.dart
import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class ScreensPopupBasic extends StatelessWidget {
  const ScreensPopupBasic({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.center,
                child: CustomFontAileronBold3grey(text: '\$0'),
              ),
              const Align(
                alignment: Alignment.center,
                child: CustomFontAileronRegular2(text: 'Mensual'),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buildListTile('200 encuestas NPS Whatsapp'),
                  const Divider(),
                  buildListTile('Obsequio de 100 Puntos bienvenida'),
                  const Divider(),
                  buildListTile('Qr digital'),
                  const Divider(),
                  buildListTile('Publicación hasta 10 productos'),
                  const Divider(),
                  buildListTile('Links y Stories ilimitado'),
                  const Divider(),
                  buildListTile('Plataforma registro referidos'),
                  const Divider(),
                  buildListTile('App para comunidad Referentes'),
                  const Divider(),
                  buildListTile('Acceso a Marketplace gratis'),
                  const Divider(),
                  buildListTile('Comisión por venta producto 15%'),
                  const Divider(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildListTile(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Container(
            width: 5,
            height: 5,
            margin: const EdgeInsets.only(right: 8),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black, // Color gris oscuro
            ),
          ),
          Expanded(
            child: CustomFontAileronRegular(text: text),
          ),
        ],
      ),
    );
  }
}

