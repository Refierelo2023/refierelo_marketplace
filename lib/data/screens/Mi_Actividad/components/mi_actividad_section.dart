import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class MiActividadSection extends StatefulWidget {
  final String imgTitutulo;
  final String titulo;
  final String totalPuntos;
  final VoidCallback press;


  const MiActividadSection({super.key, required this.imgTitutulo, required this.titulo, required this.totalPuntos, required this.press});

  @override
  State<MiActividadSection> createState() => _MiActividadSectionState();
}

class _MiActividadSectionState extends State<MiActividadSection> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.06),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(widget.imgTitutulo, height: size.height * 0.03,),
                  SizedBox(width: size.width * 0.02),
                  Text(widget.titulo ,style: const CustomFontAileronRegularWhite(text: " ").getTextStyle(context)),
                ],
              ),
              GestureDetector(
                onTap: widget.press,
                child: Container(
                  decoration: BoxDecoration(
                     color: Colors.white.withOpacity(0.23),
                     borderRadius: BorderRadius.circular(10)
                  ),
                  width: size.width * 0.28,
                  height: size.height * 0.04,
                  child: Center(child:Text('Mostrar todo', style: const CustomFontAileronRegularWhite(text: " ").getTextStyle(context))),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: size.height * 0.01),
        Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.06),
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.02, vertical: size.height * 0.01),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.23),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Actividad', style: TextStyle(color: Colors.white),),
                  RichText(text: TextSpan(
                    text: 'Total ganado ',
                    style: const TextStyle(color: Color(0xff00DFEE), fontSize: 10, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: widget.totalPuntos, style: const TextStyle(color: Color(0xff00DFEE), fontWeight: FontWeight.bold, fontSize: 16))
                    ] 
                  ))
                ],
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/mi_actividad/2.png', width: size.width * 0.06, height: size.height * 0.06,),
                        SizedBox(width: size.width * 0.01),
                        const Text('Contacto 1', style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    const Text('Pendiente', style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              SizedBox(height: size.height*0.01,),
                            Container(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/mi_actividad/2.png', width: size.width * 0.06, height: size.height * 0.06,),
                        SizedBox(width: size.width * 0.01),
                        const Text('Contacto 1', style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    const Text('Pendiente', style: TextStyle(color: Colors.white))
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}