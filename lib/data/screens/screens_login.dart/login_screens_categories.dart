import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/otp/components/btn_next.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_screens_setup_account.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_type_company.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:refierelo_marketplace/widgets/search_box.dart';
import 'package:refierelo_marketplace/widgets/widget_botton_select.dart';
import 'login_list_categories.dart';


class LoginScreensCategories extends StatefulWidget {
  const LoginScreensCategories({super.key});

  @override
  LoginScreensCategoriesState createState() => LoginScreensCategoriesState();
}

class LoginScreensCategoriesState extends State<LoginScreensCategories> {
  String selectedCategory = '';
  List<bool> isSelectedList = List.filled(38, false);
  List<String> displayedCategories = []; // Lista mostrada en la UI
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    displayedCategories = List.from(
        allCategories); // Inicializa la lista mostrada con todas las categorías
    searchController.addListener(filterCategories);
  }

  void filterCategories() {
    String query = searchController.text.toLowerCase();
    setState(() {
      if (query.isEmpty) {
        // Si el campo de búsqueda está vacío, muestra todas las categorías
        displayedCategories = List.from(allCategories);
      } else {
        // Filtra las categorías basadas en la consulta escrita
        displayedCategories = allCategories
            .where((category) => category.toLowerCase().contains(query))
            .toList();
      }
    });
  }

//   void enviarWebhook(String selectedCategory) {
//   final url = Uri.parse("http://5.189.161.131:5000/webhook");
//   final data = {
//     'Categoria': selectedCategory,
//     // ... otras propiedades del formulario
//   };

//   http.post(url, body: data).then((respuesta) {
//     if (respuesta.statusCode == 200) {
//       print('Webhook enviado con éxito');
//     } else {
//       print('Error al enviar el webhook: ${respuesta.statusCode}');
//     }
//   }).catchError((error) {
//     print('Error al enviar el webhook: $error');
//   });
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 30,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => const LoginTypeCompany(),
              ),
            );
          },
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomFontAileronBold2(
                  text: 'Selecciona tu categoría',
                ),
                const SizedBox(height: 10),
                const CustomFontAileronRegular(
                  text:
                      'Selecciona la categoría de tu empresa, nos ayudará a encontrar nuevos referentes que impulsen tu negocio',
                ),
                const SizedBox(height: 11),
                SearchBox(controller: searchController),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    itemExtent: 30,
                    itemCount: displayedCategories.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            for (int i = 0; i < isSelectedList.length; i++) {
                              isSelectedList[i] = i == index;
                            }
                            selectedCategory = displayedCategories[index];
                          });
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: CustomFontAileronRegular(
                                text: displayedCategories[index],
                              ),
                            ),
                            WidgetBottonSelect(
                              isSelected: isSelectedList[index],
                            ),
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
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: BtnNext(
              title: "Continuar ",
              press: () {
                 if (selectedCategory.isNotEmpty){
                  //  enviarWebhook(selectedCategory);
                   Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (BuildContext context) =>
                  const LoginScreensSetupAccount(),
                ),
              );
            } else {
              print('Error: No se ha seleccionado ninguna categoría');
            }
          }
        )
      ),
    );
  }
}
