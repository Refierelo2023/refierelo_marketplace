import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/Preguntas_Frecuentes/List_preguntas.dart';
import 'package:refierelo_marketplace/data/screens/Preguntas_Frecuentes/pregunta_item.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile.dart/screens_buy_points.dart';
import 'package:refierelo_marketplace/models/pregunta_frecuente.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:refierelo_marketplace/widgets/search_box.dart';

class PreguntasFrecuentesScreen extends StatefulWidget {
  const PreguntasFrecuentesScreen({super.key});

  @override
  State<PreguntasFrecuentesScreen> createState() =>_PreguntasFrecuentesScreenState();
}

class _PreguntasFrecuentesScreenState extends State<PreguntasFrecuentesScreen> {
  List<bool> isSelectedList = List.filled(8, false);
  TextEditingController searchController = TextEditingController();
  List<PreguntaFrecuente> preguntasFiltradas = [];
  

  @override
  void initState() {
    super.initState();
    preguntasFiltradas = preguntasFrecuentes; // Inicialmente, mostrar todas las preguntas
  }

  // Método para realizar la búsqueda y actualizar la lista filtrada
  void filtrarPreguntas(String query) {
    setState(() {
      preguntasFiltradas = preguntasFrecuentes
          .where((pregunta) =>
              pregunta.contenido.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xff003366), Color(0xff02B5E7)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: size.height * 0.01),
                Center(
                  child: Image.asset(
                    'assets/images/preguntas_frecuentes/icono_preguntas.png',
                    height: size.height * 0.1,
                    width: size.width * 1,
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'Aclara tus dudas y encuentra la\n',
                      style: const CustomFontAileronSemiBoldWhite(text: " ")
                          .getTextStyle(context)
                          .copyWith(height: 1.5),
                      children: [
                        TextSpan(
                            text: 'respuesta ',
                            style: const CustomFontAileronSemiBoldTur(text: " ")
                                .getTextStyle(context)
                                .copyWith(height: 1.5)),
                        TextSpan(
                            text: 'que necesitas',
                            style:
                                const CustomFontAileronSemiBoldWhite(text: " ")
                                    .getTextStyle(context)
                                    .copyWith(height: 1.5)),
                      ]),
                ),
                SizedBox(height: size.height * 0.02),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SearchBox(
                    controller: searchController,
                    onTextChanged: filtrarPreguntas,
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: preguntasFiltradas.length,
                  itemBuilder: (context, index) {
                    return PreguntaItem(
                      title: preguntasFiltradas[index].titulo,
                      content: preguntasFiltradas[index].contenido,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          toolbarHeight: 35,
          backgroundColor: const Color(0xff003366),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff003366), Color(0xff02B5E7)],
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: const Color(0xFFFFFFFF),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const MyApp(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
