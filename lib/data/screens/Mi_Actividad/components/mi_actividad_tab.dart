import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:grpc/grpc.dart';
import 'package:refierelo_marketplace/data/screens/Mi_Actividad/components/mensajeContacto/mi_actividad_detalle_screen.dart';
import 'package:refierelo_marketplace/data/screens/Mi_Actividad/components/mensajeContacto/mi_actividad_section_mensajes.dart';
import 'package:refierelo_marketplace/data/screens/Mi_Actividad/components/metricas_section.dart';
import 'package:refierelo_marketplace/data/screens/Mi_Actividad/components/mi_actividad_section.dart';
import 'package:refierelo_marketplace/data/screens/Mi_Actividad/components/referenciasEmpr/mi_actividad_section_refempr.dart';
import 'package:refierelo_marketplace/data/screens/Mi_Actividad/components/referenciasEmpr/mis_referidos_empr_screen.dart';
import 'package:refierelo_marketplace/data/screens/Mi_Actividad/components/referenciasSubpr/mi_actividad_section_referencia.dart';
import 'package:refierelo_marketplace/data/screens/Mi_Actividad/components/referenciasSubpr/mis_referidos_screen.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/components.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';
import '../../Register/components/components.dart';



class MiActividadTab extends StatefulWidget {
  const MiActividadTab({super.key});

  @override
  State<MiActividadTab> createState() => _MiActividadTabState();
}

class _MiActividadTabState extends State<MiActividadTab> {

  getMetricasResponse? metricas;
  
  @override
  void initState() {
    super.initState();
    getMetricas();
  }

  @override
  void dispose() {
    metricas = null;
    super.dispose();
  }


  Future<void> getMetricas() async {
    var channel = getChannel();
    try {
    var response = await ServiceClient(channel).getMetricas(getMetricasRequest(
            sessionString: await SessionManager().get('sessionString')));

    setState(() {
      metricas = response;
    });
      
    } on GrpcError catch (e) {
      toast(e.message??'Hubo un error', Colors.red);
    } on Exception {
      toast('Hubo un error', Colors.red);
    } finally {
      channel.shutdown();
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.02),
            MiActividadSectionMensajes(imgTitutulo: 'assets/images/mi_actividad/1.png', titulo: 'Compartiste la App', totalPuntos: '+15', press: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MiActividadDetalleScreen(imgTitutulo: 'assets/images/mi_actividad/1.png', titulo: 'Compartiste la App', puntos: '+40'))
              );
            }, ),
            SizedBox(height: size.height * 0.02),
            MiActividadSectionReferencias(imgTitutulo: 'assets/images/mi_actividad/2.png', titulo: 'Mis referidos', totalPuntos: '+3000', press: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MisReferidosScreen())
              );
            },),
            SizedBox(height: size.height * 0.02),
            MiActividadSectionRefempr(imgTitutulo: 'assets/images/mi_actividad/3.png', titulo: 'Empresas referidas', totalPuntos: '+200', press: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MisReferidosEmprScreen())
              );
            },),
            SizedBox(height: size.height * 0.02),
            MiActividadSection(imgTitutulo: 'assets/images/mi_actividad/4.png', titulo: 'Compartiste ofertas', totalPuntos: '+15', press: (){},),
            SizedBox(height: size.height * 0.02),
            if(metricas!=null) MetricasSection(metricas: metricas!,),
            SizedBox(height: size.height*0.09,)
          ],
        ),
      ),
    );
  }
}
