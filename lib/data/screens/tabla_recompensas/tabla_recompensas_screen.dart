import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/tabla_recompensas/components/categoria_recompensa_item.dart';


class TablaRecompensasScreen extends StatefulWidget {
  const TablaRecompensasScreen({super.key});

  @override
  State<TablaRecompensasScreen> createState() => _TablaRecompensasScreenState();
}

class _TablaRecompensasScreenState extends State<TablaRecompensasScreen> {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: size.width * 0.03),
                        child: IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 30,
                          ),
                        ))
                  ],
                ),
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        text: 'TABLA DE ',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        children: [
                          TextSpan(
                            text: 'RECOMPENSAS',
                            style:
                                TextStyle(color: Color(0xff00DFEE), fontSize: 20),
                          ),
                        ]),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                    child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('CATEGORÍAS',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)))),
                const CategoriaRecompensaItem(img: 'assets/images/tabla_recompensas/1.png', title: 'Bancos', content: ''),
                const CategoriaRecompensaItem(img: 'assets/images/tabla_recompensas/2.png', title: 'Cooperativas financieras', content: ''),
                const CategoriaRecompensaItem(img: 'assets/images/tabla_recompensas/3.png', title: 'Aseguradoras', content: ''),
                const CategoriaRecompensaItem(img: 'assets/images/tabla_recompensas/4.png', title: 'Fondos de pensiones', content: ''),
                const CategoriaRecompensaItem(img: 'assets/images/tabla_recompensas/5.png', title: 'Inmobiliarias', content: ''),
                const CategoriaRecompensaItem(img: 'assets/images/tabla_recompensas/6.png', title: 'Emprendedores', content: ''),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
