import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:grpc/grpc.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/components.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';
import 'package:refierelo_marketplace/models/enums.dart';
import '../../../Register/components/components.dart';


class MiActividadSectionRefempr extends StatefulWidget {
  final String imgTitutulo;
  final String titulo;
  final String totalPuntos;
  final VoidCallback press;


  const MiActividadSectionRefempr({super.key, required this.imgTitutulo, required this.titulo, required this.totalPuntos, required this.press});

  @override
  State<MiActividadSectionRefempr> createState() => _MiActividadSectionRefemprState();
}

class _MiActividadSectionRefemprState extends State<MiActividadSectionRefempr> {

  List<referenciaEmpresa> referenciasEmpresas = [];

  int totalGanado = 0;

  @override
  void initState() {
    //ignore:todo
    // TODO: implement initState
    super.initState();

    getReferenciasEmpresas();
  }

  Future<void> getReferenciasEmpresas() async {
    try {
      var channel = getChannel();
    var response = await ServiceClient(channel).getReferenciasEmpresas(getReferenciasEmprRequest(
            sessionString: await SessionManager().get('sessionString'), pageKey: '1', term: ''));

    List<referenciaEmpresa> data = [];

    for(var i = 0; i < response.data.length; i++){
      if (i>1) {
        continue;
      }
      data.add(response.data[i]);
    }
    setState(() {
      totalGanado = response.puntosGanados;
      referenciasEmpresas = data;
    });


    channel.shutdown();
    } on GrpcError catch (e) {
      toast(e.message??'Hubo un error', Colors.red);
    } on Exception {
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
                  Image.asset(widget.imgTitutulo, height: size.height * 0.04,),
                  SizedBox(width: size.width * 0.01),
                  Text(widget.titulo , style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                ],
              ),
              GestureDetector(
                onTap: widget.press,
                child: Container(
                  decoration: BoxDecoration(
                     color: Colors.white.withOpacity(0.23),
                     borderRadius: BorderRadius.circular(10)
                  ),
                  width: size.width * 0.3,
                  height: size.height * 0.04,
                  child: const Center(child:Text('Mostrar todo', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: size.height * 0.02,),
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
                  const Text('Actividad', style: TextStyle(color: Colors.white),),
                  RichText(text: TextSpan(
                    text: 'Total ganado ',
                    style: const TextStyle(color: Color(0xff00DFEE), fontSize: 10, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: totalGanado.toString(), style: const TextStyle(color: Color(0xff00DFEE), fontWeight: FontWeight.bold, fontSize: 16))
                    ] 
                  ))
                ],
              ),
              SizedBox(height: size.height * 0.02),
              // for(var item in mensajeContactos)

              if(referenciasEmpresas.isEmpty) const Text('No hay historial', style: TextStyle(color: Colors.white),),

              for(var item in referenciasEmpresas) Container(
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
                        Text(item.nombreEmpresa, style: const TextStyle(color: Colors.white),)
                      ],
                    ),
Text(EstadoReferenciaEmpr.values[item.estadoRefEmpresa]==EstadoReferenciaEmpr.cierre?'+${item.puntosGanados}':EstadoReferenciaEmpr.values[item.estadoRefEmpresa].value, style: const TextStyle(color: Colors.white))
                  ],
                ),
              )
              // SizedBox(height: size.height*0.01,),
              //               Container(
              //   padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
              //   decoration: BoxDecoration(
              //     color: Colors.white.withOpacity(0.25),
              //     borderRadius: BorderRadius.circular(10)
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Row(
              //         children: [
              //           Image.asset('assets/images/mi_actividad/2.png', width: size.width * 0.06, height: size.height * 0.06,),
              //           SizedBox(width: size.width * 0.01),
              //           const Text('Contacto 1', style: TextStyle(color: Colors.white),)
              //         ],
              //       ),
              //       const Text('Pendiente', style: TextStyle(color: Colors.white))
              //     ],
              //   ),
              // )
            ],
          ),
        )
      ],
    );
  }
}