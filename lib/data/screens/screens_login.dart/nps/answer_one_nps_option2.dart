import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/popup_customer_money/login_pop_customer_money.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_screens_data.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/widget_button.dart';


class AnswerOneNpsOption2 extends StatefulWidget {
  const AnswerOneNpsOption2({super.key});

  @override
  AnswerOneNpsOption2State createState() => AnswerOneNpsOption2State();
}

class AnswerOneNpsOption2State extends State<AnswerOneNpsOption2> {
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
          DefaultTabController.of(context).animateTo(tabIndex);
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
    String nombreComercial = Provider.of<UserDataProvider>(context, listen: false).userData.nombreComercial;
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
                labelText.replaceFirst('"TU MARCA"', nombreComercial),
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
              '🚀 Referir amigos a "TU MARCA" es muy fácil:\n'
              ' \n'
              ' Tu ganas tu primer recompensa por referir y tus amigos obtienen un regalo sorpresa ó un descuento.\n'
              ' \n '
              ' Solo debes subir a este chat el contacto del amigo que nos quieres referir 👇\n '
              ' \n '
              'Automáticamente tus amigos recibiran:\n'
              '📩    Tu invitación\n'
              '🌎    La ubicación de nuestro punto de venta\n'
              '🤑    Un beneficio exclusivo\n'
              ' \n '
              'Que estas esperando, Comparte, Refiere y Gana',
              _textFieldControllerQuestion,
            ),
            const SizedBox(height: 10),
            _buildEditableTextField(
                '👤 Subir Contacto', _textFieldController1, 8),
            // const SizedBox(height: 10),
            // // _buildEditableTextField('🤑 Referir otro amigo', _textFieldController2, 5),
            const SizedBox(height: 10),
            _buildEditableTextField(
                '🚀 Ir al Marketplace', _textFieldController2, 5),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Añadir espacio entre los TextField y el botón
                const SizedBox(height: 10),
                WidgetButton(
                  press:  () {
                      setState(() {
                        isEditable = !isEditable;
                      }
                    );
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
            image: AssetImage('assets/images/nps/banners44.png'),
            fit: BoxFit.cover,
          ),
        ),
      );
    },
  );
}
