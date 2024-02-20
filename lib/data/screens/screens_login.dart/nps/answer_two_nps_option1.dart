import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/popup_customer_money/login_pop_customer_money.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/registration_costumer_nps.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/widget_button.dart';


class AnswerTwoNpsOption2 extends StatefulWidget {
  const AnswerTwoNpsOption2({super.key});

  @override
  AnswerTwoNpsOption2State createState() => AnswerTwoNpsOption2State();
}

class AnswerTwoNpsOption2State extends State<AnswerTwoNpsOption2> {
  final TextEditingController _textFieldControllerQuestion = TextEditingController();
 bool isEditable = false;  
  
  Widget _buildEditableTextFieldQuestion(String labelText, TextEditingController controller) {
      String userName = Provider.of<UserNameProvider>(context, listen: false).userName;
  return GestureDetector(
    onTap: () {
      if (!isEditable) {
      }
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
              labelStyle: const TextStyle(
                fontFamily: "Aileron",
                fontSize: 14,
                color: Color(0xFF003366),
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 15.0,
                horizontal: 15.0,
              ),
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
              style:  TextStyle(
                fontFamily: "Aileron",
                fontSize: 14,
                color: isEditable ? const Color(0xFF003366) : const Color(0xFF666666),
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
            const SizedBox(height: 20),           
            _buildEditableTextFieldQuestion(
              '🙌  Estamos muy agradecidos, dejános tu comentario/sugerencia aquí: ⬇️\n '
              , _textFieldControllerQuestion,
            ),   
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Añadir espacio entre los TextField y el botón
                const SizedBox(height: 20),
                Stack(
                  children: [
                    WidgetButton(
                      press: () {  
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
              DefaultTabController.of(context).animateTo(3);
            },
          ),
        ),
    );
  }
}