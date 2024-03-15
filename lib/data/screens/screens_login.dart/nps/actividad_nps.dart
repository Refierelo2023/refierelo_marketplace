import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/login_screens_nps.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/registration_costumer_nps_phone.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/tab_bar_nps.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class ActividadNpsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const CustomFontAileronBold2(
              text: " Actividad NPS",
            ),
            const SizedBox(height: 20.0),
            const Row(
              children: [
                Expanded(
                  child: ContenedorNpsNuevo(
                    indicador: "45",
                    subtitulo: "Mi Score",
                    iconoData: Icons.star_border,
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: ContenedorNpsNuevo(
                    indicador: "20",
                    subtitulo: "Encuestas Realizad..",
                    iconoData: Icons.library_books_outlined,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                Expanded(
                  child: ContenedorNpsNuevo.Widget(
                      indicador: "12",
                      subtitulo: "Promotores",
                      iconoWidget: SizedBox(
                          width: 25.0,
                          height: 25.0,
                          child: Image.asset(
                            "assets/images/nps/NPS1.png",
                          ))),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: ContenedorNpsNuevo.Widget(
                    indicador: "5",
                    subtitulo: "Neutros",
                    iconoWidget: SizedBox(
                        width: 25.0,
                        height: 25.0,
                        child: Image.asset(
                          "assets/images/nps/NPS2.png",
                        )),
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                    child: ContenedorNpsNuevo.Widget(
                  indicador: "3",
                  subtitulo: "Detractores",
                  iconoWidget: SizedBox(
                    width: 25.0,
                    height: 25.0,
                    child: Image.asset(
                      "assets/images/nps/NPS3.png",
                    ),
                  ),
                )),
              ],
            ),
            const SizedBox(height: 10.0),
            const Row(
              children: [
                Expanded(
                  child: ContenedorNpsNuevo(
                      indicador: "3",
                      subtitulo: "Comentarios",
                      iconoData: FontAwesomeIcons.comment),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: ContenedorNpsNuevo(
                      indicador: "20%",
                      subtitulo: "Tasa recomendación",
                      iconoData: Icons.switch_account_outlined),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            const Align(
              alignment: Alignment.centerLeft,
              child: CustomFontAileronBold2(
                text: "Más",
              ),
            ),
            const SizedBox(height: 10.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegistrationCostumerNpsPhone()),
                );
              },              
              child: const ContenedorNpsbottom(
                  subtitulo: "Pagina de registro clientes Nps",
                  iconoData: Icons.contact_page_outlined),
            ),
            const SizedBox(height: 10.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TabBarNps()),
                );
              },
              child: const ContenedorNpsbottom(
                  subtitulo: "Prueba y edita tu encuesta",
                  iconoData: Icons.edit_note_sharp),
            ),
            const SizedBox(height: 10.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LoginScreensNps()),
                );
              },
              child: const ContenedorNpsbottom(
                  subtitulo: "Así medimos tu Nps",
                  iconoData: Icons.add_chart_sharp),
            ),
          ],
        ),
      ),
    );
  }
}

class ContenedorNpsNuevo extends StatelessWidget {
  final String indicador;
  final String subtitulo;
  final IconData? iconoData;
  final Widget? iconoWidget;

  const ContenedorNpsNuevo({
    super.key,
    required this.indicador,
    required this.subtitulo,
    required this.iconoData,
  }) : iconoWidget = null;

  const ContenedorNpsNuevo.Widget({
    super.key,
    required this.indicador,
    required this.subtitulo,
    required this.iconoWidget,
  }) : iconoData = null;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: const Color(0xFFd3d3d3)),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 0.0),
              CustomFontAileronBlack(
                text: indicador,
                fontSize: 0.06,
              ),
              const Spacer(),
              iconoData != null
                  ? Icon(iconoData, color: Colors.black)
                  : (iconoWidget ?? Container()),
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(subtitulo,
                style: const CustomFontAileronRegularBlack(
                  text: "",
                ).getTextStyle(context)),
          ),
        ],
      ),
    );
  }
}

class ContenedorNpsbottom extends StatelessWidget {
  final String subtitulo;
  final IconData? iconoData;

  const ContenedorNpsbottom({
    super.key,
    required this.subtitulo,
    required this.iconoData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF5F6F9),
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: const Color(0xFFF5F6F9)),
      ),
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 0.0),
              Icon(iconoData, color: Colors.black),
              const SizedBox(width: 5),
              CustomFontAileronRegularBlack(
                text: subtitulo,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
