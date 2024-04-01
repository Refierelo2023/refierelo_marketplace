import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:grpc/grpc.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/components.dart';
import 'package:refierelo_marketplace/models/enums.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import '../../../Register/components/components.dart';


class MiActividadSectionReferencias extends StatefulWidget {
  final String imgTitutulo;
  final String titulo;
  final String totalPuntos;
  final VoidCallback press;


  const MiActividadSectionReferencias({super.key, required this.imgTitutulo, required this.titulo, required this.totalPuntos, required this.press});

  @override
  State<MiActividadSectionReferencias> createState() => _MiActividadSectionReferenciasState();
}

class _MiActividadSectionReferenciasState extends State<MiActividadSectionReferencias> {

  // List<referenciaSubproducto> referenciasSubproductos = [];

  int totalGanado = 0;

  @override
  void initState() {
    //ignore:todo
    // TODO: implement initState
    super.initState();

    // getReferenciasSubproductos();
  }

  Future<void> getReferenciasSubproductos() async {
    try {
      var channel = getChannel();
    // var response = await ServiceClient(channel).getReferenciasSubpr(getReferenciasSubprRequest(
    //         sessionString: await SessionManager().get('sessionString'), pageKey: '1', term: ''));

    // List<referenciaSubproducto> data = [];

    // for(var i = 0; i < response.data.length; i++){
    //   if (i>1) {
    //     continue;
    //   }
    //   // data.add(response.data[i]);
    // }
    // setState(() {
    //   totalGanado = response.puntosGanados;
    //   // referenciasSubproductos = data;
    // });


    channel.shutdown();
    } on GrpcError catch (e) {
      toast(e.message??'Hubo un error', Colors.red);
    } on Exception catch (_){
      toast('Hubo un error', Colors.red);
    }
  }

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
                  Text(widget.titulo , style: const CustomFontAileronRegularWhite(text: " ").getTextStyle(context)),
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
        SizedBox(height: size.height * 0.01,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.06),
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.02, vertical: size.height * 0.01),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.23),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Actividad', style: const CustomFontAileronRegularWhite(text: " ").getTextStyle(context)),
                  RichText(text: TextSpan(
                    text: 'Total ganado ',
                    style: const TextStyle(color: Color(0xff03F9FF), fontSize: 12, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: totalGanado.toString(), style: const TextStyle(color: Color(0xff03F9FF), fontWeight: FontWeight.bold, fontSize: 16))
                    ] 
                  ))
                ],
              ),
              SizedBox(height: size.height * 0.02),
              // for(var item in mensajeContactos) 

              // if(referenciasSubproductos.isEmpty) 
              Text('No hay historial', style: const CustomFontAileronRegularWhite(text: " ").getTextStyle(context)),

              // for(var item in referenciasSubproductos) 
              Container(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
                margin: const EdgeInsets.only(bottom: 10),
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
                        // Text(item.nombreApellido, style: const TextStyle(color: Colors.white),)
                      ],
                    ),
                    // Text(EstadoReferenciaSubpr.values[item.estadoReferencia]==EstadoReferenciaSubpr.cierre?'+${item.puntosGanados}':EstadoReferenciaSubpr.values[item.estadoReferencia].value, style: const TextStyle(color: Colors.white))
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