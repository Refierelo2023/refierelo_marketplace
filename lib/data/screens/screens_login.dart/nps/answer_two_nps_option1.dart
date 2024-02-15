import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/registration_costumer_nps.dart';
import 'package:provider/provider.dart';


class AnswerTwoNpsOption2 extends StatefulWidget {
  const AnswerTwoNpsOption2({super.key});

  @override
  AnswerTwoNpsOption2State createState() => AnswerTwoNpsOption2State();
}

class AnswerTwoNpsOption2State extends State<AnswerTwoNpsOption2> {
  final TextEditingController _textFieldControllerQuestion = TextEditingController();
 bool isEditable = false;  


  Widget _buildButton(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width * 0.25;
    double buttonPaddingHorizontalPercentage = 0.020;

    return GestureDetector(
     onTap: () {  
          setState(() {
            isEditable = !isEditable;
          });
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: FractionallySizedBox(
          widthFactor: 0.6,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width,
            ),
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.width *
                  buttonPaddingHorizontalPercentage,
              horizontal: MediaQuery.of(context).size.width *
                  buttonPaddingHorizontalPercentage,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color(0xFF003366),
                  Color(0xFF02b5e7),
                ],
              ),
            ),
            child: SizedBox(
              width: buttonWidth,
              child: Text(
                isEditable ? 'Guardar' : 'Editar Encuesta',
                style: const TextStyle(
                  fontFamily: 'Aileron',
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
  
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Añadir espacio entre los TextField y el botón
                const SizedBox(height: 20),
                _buildButton(context),
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