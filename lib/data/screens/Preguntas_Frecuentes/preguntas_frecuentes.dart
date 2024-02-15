import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/Preguntas_Frecuentes/pregunta_item.dart';
import 'package:refierelo_marketplace/models/pregunta_frecuente.dart';


class PreguntasFrecuentesScreen extends StatefulWidget {
  const PreguntasFrecuentesScreen({super.key});

  @override
  State<PreguntasFrecuentesScreen> createState() => _PreguntasFrecuentesScreenState();
}

class _PreguntasFrecuentesScreenState extends State<PreguntasFrecuentesScreen> {

  List<PreguntaFrecuente> preguntasFrecuentes = [
    PreguntaFrecuente(
      contenido: 'Un innovador modelo de negocio donde puedes obtener recompensas por referir familiares, amigos y/o conocidos.',
      titulo: '¿Qué es Refiérelo?'
    ),
    PreguntaFrecuente(
      contenido: '',
      titulo: '¿Cómo funciona Refiérelo?'
    ),
    PreguntaFrecuente(
      contenido: '',
      titulo: '¿Qué productos puedo referir?'
    ),
    PreguntaFrecuente(
      contenido: '',
      titulo: '¿Qué puedo hacer si olvidé mi código?'
    ),
    PreguntaFrecuente(
      contenido: '',
      titulo: '¿Qué puedo hacer si olvide mi clave?'
    ),
    PreguntaFrecuente(
      contenido: '',
      titulo: '¿Cómo puedo radicar un reclamo?'
    ),
    PreguntaFrecuente(
      contenido: '',
      titulo: '¿Cómo registro mi referido?'
    ),
    PreguntaFrecuente(
      contenido: '',
      titulo: '¿En cuánto tiempo contactan a mi referido?'
    )
  ];




  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Color(0xff003366), Color(0xff02B5E7)])
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Row
                (
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container
                    (
                        margin: EdgeInsets.only(left: size.width * 0.04),
                        child: IconButton
                        (
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 30,
                          ),
                        )
                    )
                  ],
                ),
                Center(
                  child: Image.asset(
                    'assets/images/preguntas_frecuentes/icono_preguntas.png',
                    height: size.height * 0.15,
                    width: size.width * 1,
                  ),
                ),
                RichText
                (
                  textAlign: TextAlign.center,
                  text: const TextSpan
                  (
                      text: 'Aclara tus dudas y encuentra la\n',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      children: [
                        TextSpan(
                            text: 'respuesta ',
                            style:
                                TextStyle(color: Color(0xff00DFEE), fontSize: 18)),
                        TextSpan(
                            text: 'que necesitas',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18))
                      ]
                  ),
                ),
                Container(
                  height: size.height * 0.06,
                  width: size.width,
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.04, vertical: size.height * 0.01),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.2)
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Buscar',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.all(2),
                      border: InputBorder.none,
                      icon: ImageIcon(AssetImage('assets/images/preguntas_frecuentes/buscar.png'), color: Colors.white, size: 25,)
                    ),
                  ),
                ),
                for(var item in preguntasFrecuentes) PreguntaItem(title: item.titulo, content: item.contenido)
              ],
            ),
          ),
        ),
      ),
    );
  }
}