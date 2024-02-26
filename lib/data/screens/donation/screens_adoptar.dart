// screens_popup_basic.dart
import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/screen_reward_user/btn_recompesas.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class ScreensAdoptar extends StatelessWidget {
  const ScreensAdoptar({super.key});

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
                child: CustomFontAileronBold3grey(text: '\$25.000'),
              ),
              const Align(
                alignment: Alignment.center,
                child: CustomFontAileronRegular2(text: 'Frailejon'),
              ),
              const SizedBox(height: 20),             
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text:
                          "Si no tienes puntos disponibles, puedes adoptar tu propio Frailejon ",
                      style: const CustomFontAileronSemiBold(
                        text: " ",
                        fontSize: 0.048,
                      ).getTextStyle(context),
                    ),
                  ),
                ),
                 const SizedBox(height: 20),
                 RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text:
                          "Recibiras:  ",
                      style: const CustomFontAileronRegular(
                        text: " ",                        
                      ).getTextStyle(context),
                    ),
                  ),                
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [                 
                  const Divider(),
                  buildListTile('Tarjeta personalizada de adopción'),
                  const Divider(),
                  buildListTile('Ubicación del lugar de siembra'),
                  const Divider(),
                  buildListTile('Placa con tu nombre'),
                  const Divider(),
                  buildListTile('Foto personalizada'),
                  const Divider(),               
                ],
              ),
              const SizedBox(height: 5),
                Center(child: BtnRecompensas(callback: (){}, titulo: "Lo quiero"))
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