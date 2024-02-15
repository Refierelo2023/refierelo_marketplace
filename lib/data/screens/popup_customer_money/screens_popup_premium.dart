// screens_popup_basic.dart
import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/login_screens_nps.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class ScreensPopupPremium extends StatelessWidget {
  const ScreensPopupPremium({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
      gradient:LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
           Color(0xFFffffff),           
           Color(0xFFffffff),
           Color(0xFFffffff),
           Color(0xFFffffff),
        ]
      )
    ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: CustomFontAileronBold3grey(text: '\$3.599.000'),
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
                    buildListTile('Personalización Chatbot Nps'),
                    const Divider(),
                    buildListTile('90 cuentas parelas sucursales'),
                    const Divider(),
                    buildListTile('Qr digital - Qr fisicos'),
                    const Divider(),
                    buildListTile('RefiAgente'),
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
                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.center,
                  child: WidgetBottonLoQuiero(),
                ),
              ],
            ),
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

class WidgetBottonLoQuiero extends StatelessWidget {
  const WidgetBottonLoQuiero({super.key});

  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width * 0.35;
    double buttonPaddingHorizontalPercentage = 0.020;

    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return const LoginScreensNps();
          },
        );
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          width: buttonWidth,
          constraints: BoxConstraints(
            maxWidth: buttonWidth,
          ),
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.width *
                buttonPaddingHorizontalPercentage,
            horizontal: MediaQuery.of(context).size.width *
                buttonPaddingHorizontalPercentage,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color(0xFF003366),
                Color(0xFF02b5e7),
              ],
            ),
          ),
          child: const Text(
            'Lo quiero',
            style: TextStyle(
              fontFamily: 'Aileron',
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
