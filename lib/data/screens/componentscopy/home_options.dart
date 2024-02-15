import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/Options/credito_screen.dart';
import 'package:refierelo_marketplace/data/screens/Options/hipotecario_screen.dart';
import 'package:refierelo_marketplace/data/screens/Options/inversion_screen.dart';
import 'package:refierelo_marketplace/data/screens/Options/libranza_screen.dart';
import 'package:refierelo_marketplace/data/screens/Options/pensiones_screen.dart';
import 'package:refierelo_marketplace/data/screens/Options/seguros_screen.dart';


class HomeOptions extends StatelessWidget {
  const HomeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: const Color(0xffefefef),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LibranzaScreen()));
                    },
                    child: const Image(
                      image: AssetImage('assets/images/images_display_refiere_aqui/reportados.png'),
                    ),
                  ),
                  const Text('Libranza',
                      style: TextStyle(fontSize: 10))
                ],
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CreditoScreen()));
                    },
                    child: const Image(
                      image: AssetImage('assets/images/images_display_refiere_aqui/creditos.png'),
                    ),
                  ),
                  const Text('Otros créditos', style: TextStyle(fontSize: 10))
                ],
              )
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HipotecarioScreen()));
                    },
                    child: const Image(
                      image: AssetImage('assets/images/images_display_refiere_aqui/hipotecario.png'),
                    ),
                  ),
                  const Text('Hipotecario', style: TextStyle(fontSize: 10))
                ],
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SegurosScreen()));
                    },
                    child: const Image(
                      image: AssetImage('assets/images/images_display_refiere_aqui/seguros.png'),
                    ),
                  ),
                  const Text('Seguros', style: TextStyle(fontSize: 10))
                ],
              )
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const InversionScreen()));
                    },
                    child: const Image(
                      image: AssetImage('assets/images/images_display_refiere_aqui/inversiones.png'),
                    ),
                  ),
                  const Text('Inversión', style: TextStyle(fontSize: 10))
                ],
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PensionesScreen()));
                    },
                    child: const Image(
                      image: AssetImage('assets/images/images_display_refiere_aqui/pensiones.png'),
                    ),
                  ),
                  const Text(
                    'Traslado de pensiones',
                    style: TextStyle(fontSize: 10),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
