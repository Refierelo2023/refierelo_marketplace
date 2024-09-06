import 'dart:io';
import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/Preguntas_Frecuentes/preguntas_frecuentes.dart';
import 'package:refierelo_marketplace/data/screens/Register/register_form.dart';
import 'package:refierelo_marketplace/data/screens/Share/share_screen.dart';
import 'package:refierelo_marketplace/data/screens/refiere_una_empresa/refiere_empresa_screen.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/actividad_nps.dart';
import 'package:refierelo_marketplace/data/screens/sugerencias/sugerencias_screen.dart';
import 'package:refierelo_marketplace/data/screens/tabla_recompensas/tabla_recompensas_screen.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../simulador/simulador_screen.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({super.key, required this.setTab});

  final Function(int) setTab;

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Opacity(
        opacity: 0.75,
        child: Drawer(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xff0080BF),
              Color(0xff1393BF),
              Color(0xff00DFDF)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SugerenciasScreen()));
                    },
                    child: const ListTile(
                      leading: Icon(Icons.person_rounded),
                      title: Text(
                        'Sugerencias',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PreguntasFrecuentesScreen()));
                    },
                    child: const ListTile(
                      leading: Icon(Icons.person_rounded),
                      title: Text(
                        'Preguntas frecuentes',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.person_rounded),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SimuladorScreen()));
                    },
                    title: const Text(
                      'Simulador',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const TablaRecompensasScreen()));
                    },
                    child: const ListTile(
                      leading: Icon(Icons.person_rounded),
                      title: Text(
                        'Tabla de puntos',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),

                  // ListTile(
                  //   leading: const Icon(Icons.person_rounded),
                  //   title: const Text(
                  //     'Salir',
                  //     style: TextStyle(
                  //         fontSize: 14,
                  //         fontWeight: FontWeight.w500,
                  //         color: Colors.white),
                  //   ),
                  //   onTap: (() async {
                  //     await SessionManager().destroy();
                  //     Navigator.pushAndRemoveUntil(
                  //         navigatorKey.currentContext!,
                  //         MaterialPageRoute(
                  //           builder: (BuildContext context) => Body(),
                  //         ),
                  //         (route) => false);
                  //   }),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DisplaySidebarVertical extends StatefulWidget {

  const DisplaySidebarVertical({
    super.key,
     
    });

  @override
  DisplaySidebarVerticalState createState() => DisplaySidebarVerticalState();
}

class DisplaySidebarVerticalState extends State<DisplaySidebarVertical> {
  late List<bool> isButtonSelectedList;
  bool _isVisible = false;
  UserProfile? _user; 

  @override
  void initState() {
    super.initState();
    isButtonSelectedList = List.generate(7, (index) => false);
  }

  void selectOnly(int index) {
    setState(() {
      for (int i = 0; i < isButtonSelectedList.length; i++) {
        isButtonSelectedList[i] = (i == index);
      }
    });
  }

  void toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  Widget buildContainer({
    required int index,
    required String title,
    required IconData icon,
  }) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () async {
          if (title == "Refiere una marca") {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RefiereEmpresaScreen(),
                ));
          } else if (title == "Mi perfil") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterForm(                  
                  msisdn: '',                
                ),
              ),
            );
          }
          if (title == "Atención") {
            const numero = '+573014117482';
            final Uri whatsappURlAndroid =
                Uri.parse("whatsapp://send?phone=$numero");
            final Uri whatappURLIos = Uri.parse('https://wa.me/$numero');

            if (Platform.isIOS) {
              if (await canLaunchUrl(whatappURLIos)) {
                await launchUrl(whatappURLIos,
                    mode: LaunchMode.platformDefault);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("WhatsApp no está instalado")));
              }
            } else {
              if (await canLaunchUrl(whatsappURlAndroid)) {
                await launchUrl(whatsappURlAndroid);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("WhatsApp no está instalado")));
              }
            }
          } else if (title == "Sugerencias") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SugerenciasScreen(),
              ),
            );
          } else if (title == "Comparte y Gana") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ShareScreen(),
              ),
            );
          } else if (title == "Preguntas frecuentes") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PreguntasFrecuentesScreen(),
              ),
            );
          } else if (title == "Nps") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ActividadNpsScreen(),
              ),
            );
            selectOnly(index);
            toggleVisibility();
          }
        },
        child: Ink(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.white,
                spreadRadius: 0,
                blurRadius: 20,
                offset: Offset(0, 0),
              ),
            ],
            border: Border.all(
                color:
                    isButtonSelectedList[index] ? Colors.white : Colors.white),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
              vertical: MediaQuery.of(context).size.width * 0.010,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 43,
                  width: 43,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.transparent),
                  child: Icon(
                    icon,
                    size: MediaQuery.of(context).size.width * 0.06,
                    color: const Color(0xFF000000), // Color del icono
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomFontAileronBold(text: title),
                    ],
                  ),
                ),
                // const Spacer(),
                // WidgetBottonSelect(
                //   isSelected: isButtonSelectedList[index],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color(0xFFffffff),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 9),
                height: 5,
                decoration: const BoxDecoration(
                  color: Color(0xFF666666),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                width: MediaQuery.of(context).size.width * 0.12, // Ancho del accesorio
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    buildContainer(
                      index: 0,
                      title: 'Mi perfil',
                      icon: Icons.person_outline_rounded,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.001,
                    ),
                    buildContainer(
                      index: 1,
                      title: 'Comparte y Gana',
                      icon: Icons.rotate_right_sharp,
                    ),
                    buildContainer(
                      index: 2,
                      title: 'Refiere una marca',
                      icon: Icons.shopping_cart_outlined,
                    ),
                    buildContainer(
                      index: 3,
                      title: 'Atención',
                      icon: Icons.phonelink_ring_rounded,
                    ),
                    buildContainer(
                        index: 4,
                        title: 'Sugerencias',
                        icon: Icons.lightbulb_outline_sharp),
                    buildContainer(
                        index: 5,
                        title: 'Preguntas frecuentes',
                        icon: Icons.question_mark_rounded),
                    buildContainer(
                        index: 6,
                        title: 'Nps',
                        icon: Icons.star_border_rounded),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

String? selectedImagePath;
