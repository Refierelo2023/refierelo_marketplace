import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:grpc/grpc.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/constants.dart';
import 'package:refierelo_marketplace/data/screens/Dialogs/premio_diario_dialog.dart';
import 'package:refierelo_marketplace/data/screens/Ofertas/ofertas_screen.dart';
import 'package:refierelo_marketplace/data/screens/Stories/stories_screen.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/components.dart';
import 'package:refierelo_marketplace/data/screens/home/components/carousel_normal.dart';
import 'package:refierelo_marketplace/data/screens/main.dart';
import 'package:refierelo_marketplace/data/screens/refiere_una_empresa/refiere_empresa_screen.dart';
import 'package:refierelo_marketplace/data/screens/screens_home__view/screens_announcements.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';
import 'package:refierelo_marketplace/providers/referente_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Dialogs/reward_dialog.dart';
import '../Dialogs/welcome_dialog.dart';
import '../Register/components/components.dart';



// Imagenes para carrusel numero 3
final List<String> imgListCarousel_3 = [
  'assets/images/images_display_comprar.dart/black1.jpeg',
  'assets/images/images_display_comprar.dart/black3.jpeg',
];

class Homev extends StatefulWidget {
  const Homev({super.key, required this.setTab});

  final Function(int) setTab;

  @override
  HomevState createState() => HomevState();
}

class HomevState extends State<Homev> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<UserModel> sampleUsers = [];

  // Listas con las imagenes para cada carrusel
  List<producto> imgLists = [];

  bool storiesVistas = true;

  String textoNegrita = '';
  String texto = '';
  String textoColor = '';
  String fecha = '';

// Carga del modal
  @override
void initState() {
  super.initState();
  _showDialog();
  getRecursos();
  getProductos().then((value) {
    validateDatetimeModal();
  });
}
 Future<void> validateDatetimeModal() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  // Get last access
  final int? lastAccess = prefs.getInt('lastAccess');

  if (lastAccess != null) {
    // Get last access as DateTime
    final DateTime lastAccessTime = DateTime.fromMillisecondsSinceEpoch(lastAccess);

    // Imprime el valor de fecha antes de parsear
    print('Valor de fecha antes de parsear: $fecha');

    if (fecha.isNotEmpty) {
      try {
        final DateTime parsedFecha = DateTime.parse(fecha);
        final notOpened = parsedFecha.isAfter(lastAccessTime);

        if (notOpened) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (_) => PremioDiarioDialog(
              fecha: fecha,
              texto: texto,
              textoColor: textoColor,
              textoNegrita: textoNegrita,
            ),
          );
        }
      } catch (e) {
        print('Error al parsear la fecha: $e');
        print('Valor de fecha que causó el error: $fecha');
        // Maneja el error de formato de fecha aquí
      }
    } else {
      print('El valor de fecha es nulo o está vacío.');
    }
  } else {
    print('El valor de lastAccess es nulo.');
  }

  // Verifica si fecha es nulo o vacío antes de intentar parsearlo
  if (fecha.isNotEmpty) {
    prefs.setInt('lastAccess', DateTime.parse(fecha).millisecondsSinceEpoch);
  }
}

  Future<void> getProductos() async {
  try {
    var channel = getChannel();
    var response = await ServiceClient(channel).getProductos(
        getProductosRequest(
            sessionString: await SessionManager().get('sessionString')));

    setState(() {
      imgLists = response.productos;
      textoNegrita = response.textoNegrita;
      texto = response.texto;
      textoColor = response.textoColor;
      fecha = response.fecha;
      storiesVistas = response.storiesVistas;
    });

    channel.shutdown();
  } on GrpcError catch (e) {
    print('Error gRPC: $e');
    toast(e.message ?? 'Hubo un error', Colors.red);
  } catch (e) {
    print('Error inesperado: $e');
    toast('Hubo un error', Colors.red);
  }
}


  Future<void> getRecursos() async {
    List<StoryModel> recursos = [];
    var channel = getChannel();

    ServiceClient(channel)
        .getRecursos(recursosRequest(
            idComponente: 1,
            sessionString: await SessionManager().get('sessionString'),
            idreferente:
                context.read<ReferenteProvider>().referenteGlobal?.idreferente))
        .listen((value) {
      recursos.add(StoryModel(value.path, value.configCodigo, value.idRecurso));
      if (value.compartido == 0) {
        setState(() {
          // compartidos = 0;
        });
      }
    }).onDone(() {
      recursos = recursos;
      recursos = recursos;

      setState(() {
        sampleUsers = [
          UserModel(
            recursos,
            '',
            '',
          )
        ];
      });
      channel.shutdown();
    });
  }

// get Referente information
Future<String> getConfig() async {
  // String sessionSecret = await SessionManager().get("sessionString");

  final channel = ClientChannel(
    // '18.188.244.114',
    host,
    port: getPort(),
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );

    //Guardando el mensaje en la sesión
    //await SessionManager().set("msg", welcomMsg);
    //

    await channel.shutdown();
    return "data";
  }

  _showDialog() async {
    final prefs = await SharedPreferences.getInstance();

    final bool? show = prefs.getBool('repeat');

    if (show == null) {
      await prefs.setBool('repeat', true);

      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (_) => const WelcomeDialog()).then((puntos) {
        if (puntos != null) {
          showDialog(
              context: context,
              builder: (context) {
                return RewardDialog(
                  puntos: puntos.toString(),
                );
              });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
          key: _scaffoldKey,
          backgroundColor: Colors.white,
          body: SafeArea(
              child: Column(
            children: [
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    // HISTORIAS
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100)),
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        navigatorKey.currentContext!,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                StoriesScreen(
                                                    sampleUsers:
                                                        sampleUsers)),
                                      ).then((value) async {
                                        if (value != null) {
                                          try {
                                            var channel = getChannel();
                                            var response = await ServiceClient(
                                                    getChannel())
                                                .registerVistaStories(
                                                    registerVistaStoriesRequest(
                                                        sessionString:
                                                            (await SessionManager()
                                                                    .get(
                                                                        'sessionString'))
                                                                .toString()))
                                                .whenComplete(() {
                                              channel.shutdown();
                                            });
          
                                            context
                                                .read<ReferenteProvider>()
                                                .actualizarPuntos(
                                                    int.tryParse(response
                                                            .puntosGanados
                                                            .toString()) ??
                                                        0);
                                            if (mounted &&
                                                response.puntosGanados > 0) {
                                              showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return RewardDialog(
                                                      puntos: response
                                                          .puntosGanados
                                                          .toString(),
                                                    );
                                                  });
          
                                              setState(() {
                                                storiesVistas = value;
                                              });
                                            }
                                          } catch (e) {
                                            // Manejar la excepción aquí
                                          }
                                        }
                                        // getRecursos();
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        padding: EdgeInsets.zero,
                                        shape: const CircleBorder(),
                                        fixedSize: const Size(40, 40),
                                        side: BorderSide(
                                            color: (storiesVistas == false &&
                                                    sampleUsers.isNotEmpty)
                                                ? Colors.pink
                                                : Colors.grey,
                                            width: 2)),
                                    child: Ink(
                                      decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                              colors: [
                                                Color(0xff142D55),
                                                Color(0xff27567F),
                                                Color(0xff2A75A3)
                                              ]),
                                          borderRadius:
                                              BorderRadius.circular(80)),
                                      child: Container(
                                        width: 60,
                                        height: 60,
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                            'assets/images/images_main/logocircular.png'),                                          
                                      ),
                                    )
                                  ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    if (imgLists.isNotEmpty)
                   
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OfertasScreen()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
                        child: const Image(
                          image:AssetImage('assets/images/ofertas/ofertas.png'),
                        ),
                      ),
                    ),                    
           
                    SizedBox(height: size.height * 0.02),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const RefiereEmpresaScreen()),
                          );
                        },
                        child: BannerComponent(paths: imgListCarousel_3)),
                    SizedBox(
                      height: size.height * 0.068,
                    )
                  ],
                ),
              )),
            ],
          )),
        ),
        Positioned(
          top: 70.w,
          bottom: 0,
          left: 0,
          right: 0,
          child: const IndexedStack(
            index: 0,
            children: [
              ScreensAnnouncements(),
            ],
          ),
        ),
      ],
    );
  }
}
