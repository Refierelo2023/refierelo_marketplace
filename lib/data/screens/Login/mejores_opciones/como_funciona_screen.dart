import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/Options/components/custom_appbar.dart';
import 'package:refierelo_marketplace/data/screens/Share/components/share_btn.dart';

class ComoFuncionaScreen extends StatelessWidget {
  const ComoFuncionaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const CustomAppbar(title: '¿Como funciona?'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: size.height * 0.01),
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                child: Image.asset('assets/images/carrusel_1/6.png'),
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xffefefef),
                    borderRadius: BorderRadius.circular(20)),
                height: size.height * 0.63,
                width: size.width,
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                margin: EdgeInsets.symmetric(
                    vertical: size.height * 0.01,
                    horizontal: size.width * 0.04),
                child: Column(
                  children: [
                    const Text(
                      'Con inteligencia artificial buscaremos en todo el sistema financiero las mejores opciones que se ajusta a las necesidades y al perfil de tu referido.',
                      style: TextStyle(
                          color: Color((0xff003366)),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    const Text(
                      '¿Como funciona?',
                      style: TextStyle(color: Color(0xff003366), fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Para tí',
                        style: TextStyle(
                            color: Color(0xff003366),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '1. Comparte el Link de youtube para que tu referido conozca Refiérelo.',
                        style: TextStyle(color: Color(0xff003366)),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '2. Comparte el "link registro" con tu referido.',
                        style: TextStyle(color: Color(0xff003366)),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '3.Asegurate que tu referido diligencie el formulario y lo envie',
                        style: TextStyle(color: Color(0xff003366)),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: const TextSpan(
                            text: '4. Listo, así de fácil ganas 10 puntos y  ',
                            style: TextStyle(color: Color(0xff003366)),
                            children: [
                              TextSpan(
                                  text: 'muchos más ',
                                  style: TextStyle(
                                      color: Color(0xff003366),
                                      fontWeight: FontWeight.w500)),
                              TextSpan(
                                  text: 'si tu referido es efectivo.',
                                  style: TextStyle(
                                    color: Color(0xff003366),
                                  ))
                            ]),
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Para tu Referido',
                        style: TextStyle(
                            color: Color(0xff003366),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '1. Solo tendrá que ingresar sus datos y seleccionar el producto.',
                        style: TextStyle(color: Color(0xff003366)),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '2. Analizaremos en tiempo récord su perfil y su necesidad.',
                        style: TextStyle(color: Color(0xff003366)),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '3. Le mostraremos las mejores entidades para que seleccione la mejor.',
                        style: TextStyle(color: Color(0xff003366)),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '4. Lo pondremos en contacto directamente con la entidad.',
                        style: TextStyle(color: Color(0xff003366)),
                      ),
                    ),
                  ],
                ),
              ),
              // ignore: prefer_const_constructors
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ShareBtn(title: 'Referir', img: 'assets/images/como_funciona/compartir.png',),
                  ShareBtn(title: 'Youtube', img: 'assets/images/como_funciona/youtube.png',)
                ],
              ),
              SizedBox(
                height: size.height * 0.01,
              )
            ],
          ),
        ),
      ),
    );
  }
}
