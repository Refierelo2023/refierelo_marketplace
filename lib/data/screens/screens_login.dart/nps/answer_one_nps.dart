import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/otp/components/btn_next.dart';
import 'package:refierelo_marketplace/data/screens/popup_customer_money/login_pop_customer_money.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/registration_costumer_nps.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/tab_bar_nps.dart';


class QuestionTwoNps extends StatefulWidget {
  const QuestionTwoNps({super.key});

  @override
  QuestionTwoNpsState createState() => QuestionTwoNpsState();
}

class QuestionTwoNpsState extends State<QuestionTwoNps> {
  final TextEditingController _textFieldController1 = TextEditingController();
  final TextEditingController _textFieldController2 = TextEditingController();
  final TextEditingController _textFieldControllerQuestion =
      TextEditingController();
  bool isEditable = false;

  Widget _buildEditableTextField(
      String labelText, TextEditingController controller, int tabIndex) {
    return GestureDetector(
      onTap: () {
        if (!isEditable) {
          // Navegar a la pantalla correspondiente
          TabBarNpsState tabBarNpsState = context.findAncestorStateOfType<TabBarNpsState>()!;
        tabBarNpsState.changeTab(tabIndex);
        }
      },
      child: TextField(
        enabled: isEditable,
        controller: controller,
        maxLines: 1,
        decoration: InputDecoration(
            labelText: labelText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Color(0xFF003366)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Color(0xFF02b5e7)),
            ),
            labelStyle: TextStyle(
              fontFamily: "Aileron",
              fontSize: 14,
              color: isEditable
                  ? const Color(0xFF003366)
                  : const Color(0xFF666666),
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 15.0,
              horizontal: 15.0,
            ),
            filled: true,
            fillColor: isEditable ? Colors.white : const Color(0xFFFAFAFA)),
      ),
    );
  }

  Widget _buildEditableTextFieldQuestion(
    String labelText,
    TextEditingController controller,
  ) {
    String userName =
        Provider.of<UserNameProvider>(context, listen: false).userName;
    return GestureDetector(
      onTap: () {
        if (!isEditable) {}
      },
      child: isEditable
          ? TextField(
              enabled: isEditable,
              controller: controller,
              maxLines: 4,
              textAlign: TextAlign.justify,
              decoration: InputDecoration(
                labelText: labelText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Color(0xFF02B5E7)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Color(0xFF02B5E7)),
                ),
                labelStyle: TextStyle(
                  fontFamily: "Aileron",
                  fontSize: 14,
                  color: isEditable
                      ? const Color(0xFF003366)
                      : const Color(0xFFFAFAFA),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 15.0,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
            )
          : Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: isEditable ? Colors.white : const Color(0xFFFAFAFA),
                border: Border.all(color: const Color(0xFFD3D3D3)),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
                horizontal: 15.0,
              ),
              child: Text(
                labelText.replaceFirst('"NOMBRE DEL CLIENTE"', userName),
                style: TextStyle(
                  fontFamily: "Aileron",
                  fontSize: 14,
                  color: isEditable
                      ? const Color(0xFF003366)
                      : const Color(0xFF666666),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                const SizedBox(width: 40),
                _buildImageContainer(),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 45, // Ancho del contorno
                      height: 40, // Alto del contorno
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            15), // Ajusta según sea necesario
                        color: Colors.white.withOpacity(0.5),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          // Acción para cargar imagen desde la galería
                          // (debes implementar la lógica para esto)
                        },
                        child: const Icon(
                          Icons.camera_alt,
                          color: Colors.black, // Color del icono
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            _buildEditableTextFieldQuestion(
              '👏 ¡Estupendo! "NOMBRE DEL CLIENTE", lo bueno de tener una excelente experiencia es compartirla y lo mejor es ganar recompensas por hacerlo,\n'
              '\n'
              ' 🚀 únete a nuestra comunidad de Referentes y gana recompensas por compartir contenido y referir amigos 🤩\n'
              '\n'
              '¿Que estas esperando?'
              '\n'
              '\n'
              ' Comparte, Refiere y Gana 🤑" ',
              _textFieldControllerQuestion,
            ),
            const SizedBox(height: 10),
            _buildEditableTextField(
                '🚀 Ir al Marketplace', _textFieldController1, 5),
            const SizedBox(height: 10),
            _buildEditableTextField(
                '🤑 Referir a un amigo', _textFieldController2, 6),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Stack(
                  children: [
                    BtnNext(
                      press: () {
                        setState(() {
                          isEditable = !isEditable;
                        });
                      },
                      title: isEditable ? 'Guardar' : 'Editar Encuesta',
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: GestureDetector(
                        onTap: () {
                          LoginPopCustomerMoney.showLoginPop(context);
                        },
                        child: Container(
                          width: 230,
                          height: 70,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
          toolbarHeight: 40,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              DefaultTabController.of(context).animateTo(1);
            },
          ),
        ),
    );
  }
}

Widget _buildImageContainer() {
  return Builder(
    builder: (context) {
      double containerHeight =
          MediaQuery.of(context).size.width * 0.50; // Altura responsive
      double containerWidth =
          MediaQuery.of(context).size.width * 0.90; // Ancho completo

      return Container(
        width: containerWidth,
        height: containerHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
            image: AssetImage('assets/images/nps/banners2.png'),
            fit: BoxFit.cover,
          ),
        ),
      );
    },
  );
}
