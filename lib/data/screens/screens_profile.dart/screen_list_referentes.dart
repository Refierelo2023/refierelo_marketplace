import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile.dart/list_data_referentes.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile.dart/widget_button_eliminar.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:refierelo_marketplace/widgets/search_box.dart';

class ScreensListReferentes extends StatefulWidget {
  const ScreensListReferentes({super.key});

  @override
  ScreensListReferentesState createState() => ScreensListReferentesState();
}

class ScreensListReferentesState extends State<ScreensListReferentes> {
  List<bool> isSelectedList = List.filled(5, false);
  List<Referente> displayedReferentes = []; // Lista mostrada en la UI
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    displayedReferentes = List.from(
        allReferentes); // Inicializa la lista mostrada con todas las categorías
    searchController.addListener(filterReferentes);
  }

  void filterReferentes() {
    String query = searchController.text.toLowerCase();
    setState(() {
      if (query.isEmpty) {
        displayedReferentes = List.from(allReferentes);
      } else {
        displayedReferentes = allReferentes
            .where(
                (referente) => referente.nombre.toLowerCase().contains(query))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const Align(
                //   alignment: Alignment.center,
                //   child: CustomFontAileronBold2(
                //     text: 'Top Referentes',
                //   ),
                // ),
                const SizedBox(height: 11),
                SearchBox(controller: searchController),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    itemExtent: 85,
                    itemCount: displayedReferentes.length,
                    itemBuilder: (BuildContext context, int index) {
                      Referente referente = displayedReferentes[index];
                      return InkWell(
                        onTap: () {
                          setState(() {
                            for (int i = 0; i < isSelectedList.length; i++) {
                              isSelectedList[i] = i == index;
                            }
                          });
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: CachedNetworkImageProvider(
                                    referente.fotoPerfil,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomFontAileronSemiBold(
                                    text: referente.nombre,
                                  ),
                                  const SizedBox(height: 0),
                                  Row(
                                    children: [
                                      Text("Referidos: ${referente.referidos}",
                                          style: const TextStyle(
                                            fontFamily: "Aileron",
                                            fontSize: 12,
                                            color: Colors.grey,
                                          )),
                                    ],
                                  ),
                                  const SizedBox(width: 10),
                                  Text("Compartido: ${referente.compartido}",
                                      style: const TextStyle(
                                        fontFamily: "Aileron",
                                        fontSize: 12,
                                        color: Colors.grey,
                                      )),
                                ],
                              ),
                            ),
                            const WidgetBottonEliminar(),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
