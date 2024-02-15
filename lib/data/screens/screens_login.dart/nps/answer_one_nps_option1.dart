import 'package:flutter/material.dart';

class AnswerOneNpsOption1 extends StatefulWidget {
  const AnswerOneNpsOption1({super.key});

  @override
  AnswerOneNpsOption1State createState() => AnswerOneNpsOption1State();
}

class AnswerOneNpsOption1State extends State<AnswerOneNpsOption1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xFFffffff),
                border: Border.all(color: const Color(0xFFD3D3D3)),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
                horizontal: 15.0,
              ),
              child: const Text(
                "En esta opción enviamos a tu Cliente a tu perfil Marketplace donde podrá unirse a tu comunidad de Referentes 🚀 compartir tu contenido, comprar tus productos, referir amigos y ganar recompensas  🤑",
                style: TextStyle(
                  fontFamily: "Aileron",
                  fontSize: 14,
                  color: Color(0xFF003366),
                ),
                textAlign: TextAlign.justify,
              ),
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
