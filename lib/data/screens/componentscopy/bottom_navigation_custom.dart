import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_validator/form_validator.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/Mi_Actividad/mi_actividad.dart';
import 'package:refierelo_marketplace/data/screens/Tienda/tienda_screen.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/components.dart';
import 'package:refierelo_marketplace/data/screens/home/homev.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';
import 'package:refierelo_marketplace/models/referente.dart';
import 'package:refierelo_marketplace/providers/referente_provider.dart';
import '../IntroductionScreens/introduction_screen.dart';
import '../Mi_Actividad/components/recompensas_tab.dart';
import '../Register/components/components.dart';
import '../Share/share_screen.dart';
import '../home/components/sidebar.dart';

class BottomNavigationCustom extends StatefulWidget {
  const BottomNavigationCustom({super.key});

  @override
  _BottomNavigationCustom createState() => _BottomNavigationCustom();
}

class _BottomNavigationCustom extends State<BottomNavigationCustom> {
  late final Future<String> future;

  int currentIndex = 0;
  var screens = [];

  DateTime? currentBackPressTime;

  @override
  void initState() {
    // ignore:todo
    // TODO: implement initState
    super.initState();
    ValidationBuilder.setLocale('es');
    future = getSession();

    screens = [
      Navigator(
        onGenerateRoute: (settings) {
          Widget page = Homev(setTab: setTab,);
          if (settings.name == 'comparteGana') page = const ShareScreen(showAppbar: true,);
          return MaterialPageRoute(builder: (_) => page);
        },
      ),
    Homev(setTab: setTab,),
    const TiendaScreen(),
    const MiActividadScreen(),
    RecompensasTab(changeTab: (){},)];
  }

  void setTab(int index){
    setState(() => currentIndex = index);
  }

  Future<String> getSession() async {
    if (await SessionManager().containsKey('sessionString')) {
      try {
        var sessionString = await SessionManager().get('sessionString');

      if (sessionString == '') {
        SessionManager().destroy();
        throw Exception('Sesión no encontrada');
      }

      var channel = getChannel();

      var responseRef = await ServiceClient(channel).getReferente(
          getReferenteRequest(sessionString: sessionString));

      channel.shutdown();
      context.read<ReferenteProvider>().set(Referente(
          idreferente: responseRef.idreferente,
          codigoReferente: responseRef.codigoReferente,
          msisdn: responseRef.msisdn,
          apellidos: responseRef.apellidos,
          nombres: responseRef.nombres,
          mail: responseRef.mail,
          fechaNacimiento:
              DateTime.tryParse(responseRef.fechaNacimiento) ?? DateTime.now(),
          ciudad: responseRef.ciudad,
          entidadFinanciera: responseRef.entidadFinanciera,
          clave: '',
          idTipoCuentaReferente: responseRef.idTipoCuentaReferente,
          sessionString: responseRef.sessionString,
          fechaCreacion: DateTime.now(),
          fechaModificacion: DateTime.now(),
          fechaAcceso: DateTime.now(),
          puntos: int.tryParse(responseRef.puntos.toString()) ?? 0,
          idMediosPagos: int.tryParse(responseRef.idMediosPagos.toString()),
          msisdnRecomendado:  responseRef.msisdnRecomendado==''?null:responseRef.msisdnRecomendado, identificacion: responseRef.identificacion,
          puntosEnProceso: responseRef.puntosEnProceso,
          puntosFechaVencimiento: responseRef.puntosFechaVencimiento,
          ));

      return await SessionManager().get('sessionString');
      } catch (e) {
        throw Exception('Session no encontrada.');
      }
    } else {
      throw Exception('Session no encontrada.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(child: Scaffold(
      endDrawer: Sidebar(setTab: setTab),
      body: Stack(children: [
        FutureBuilder<String>(
          future: future,
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.hasData) {
              return screens[currentIndex];
            } else if (snapshot.hasError) {
              SessionManager().destroy();
              Navigator.pushAndRemoveUntil( 
                context, MaterialPageRoute(
                builder: (BuildContext context) => const IntroductionScreen(),
              ),
              (route) => false);
              return const Text('');
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
          Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                    data: Theme.of(context)
                        .copyWith(canvasColor: Colors.transparent),
                    child: 
                    Container(
        decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Color.fromARGB(153, 0, 149, 194), Color.fromARGB(153, 0, 222, 238)])
                ),
        
        child: 
        BottomNavigationBar(
          onTap: (index) => setState(() => currentIndex = index),
          backgroundColor:Colors.transparent,
          unselectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage('assets/images/bottom_navigation/casa.png')),
                label: 'Inicio'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage('assets/images/bottom_navigation/shopping.png')),
                label: 'Tienda'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage('assets/images/bottom_navigation/grafica.png')),
                label: 'Mi actividad'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(
                    'assets/images/bottom_navigation/recompensas.png')),
                label: 'Recompensas')
          ],
        ),
      ),
                    )),
      ],) 
    ), onWillPop: () async {
      DateTime now = DateTime.now();
    if (currentBackPressTime == null || (currentBackPressTime!=null && (now.difference(currentBackPressTime!) > const Duration(seconds: 2)))) {
      currentBackPressTime = now;
      toast('Presione nuevamente para salir', const Color.fromARGB(255, 68, 68, 68));
      return false;
    }else{
      await Fluttertoast.cancel();
      return true;
    }
    });
  }
}
