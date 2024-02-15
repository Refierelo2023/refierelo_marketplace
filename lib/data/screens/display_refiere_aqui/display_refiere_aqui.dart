import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class DisplayRefiereAqui extends StatefulWidget {
  final VoidCallback? onToggleVisibility;

  const DisplayRefiereAqui({super.key, this.onToggleVisibility});

  @override
  DisplayRefiereAquiState createState() => DisplayRefiereAquiState();
}

class DisplayRefiereAquiState extends State<DisplayRefiereAqui> {
  late List<bool> isButtonSelectedList;
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    isButtonSelectedList = List.generate(6, (index) => false);
  }

  void selectOnly(int index) {
    setState(() {
      for (int i = 0; i < isButtonSelectedList.length; i++) {
        isButtonSelectedList[i] = (i == index);
      }
    });
  }

  void _toggleVisibility() {
    if (widget.onToggleVisibility != null) {
      widget.onToggleVisibility!();
    }
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              height: 4,
              decoration: const BoxDecoration(
                color: Color(0xFF666666),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              width: MediaQuery.of(context).size.width * 0.12,
            ),
            const SizedBox(height: 0.0),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.14,
              height: MediaQuery.of(context).size.width * 0.14,
              child: Image.asset(
                'assets/images/images_display_refiere_aqui/validacion.png',
                fit: BoxFit.cover,
              ),
            ),
            const Align(
                alignment: Alignment.center,
                child: CustomFontAileronBold(
                  text: "¡ Gana más puntos refiriendo estos productos !",
                ),
              ),
            // const SizedBox(height: 5.0),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildContainer(
                        index: 0,
                        title: 'Reportados',
                        subtitle: 'Créditos >',
                      ),
                      buildContainer(
                        index: 1,
                        title: 'Hipotecario',
                        subtitle: 'Créditos >',
                      ),
                      buildContainer(
                        index: 2,
                        title: 'Inversiones',
                        subtitle: 'Recursos >',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildContainer(
                        index: 3,
                        title: 'Otros Créditos',
                        subtitle: 'Créditos >',
                      ),
                      buildContainer(
                        index: 4,
                        title: 'Seguros',
                        subtitle: 'Todo Riesgo >',
                      ),
                      buildContainer(
                        index: 5,
                        title: 'Pensiones',
                        subtitle: 'Traslado >',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContainer({
    required int index,
    required String title,
    required String subtitle,
  }) {
    String imagePath = '';
    switch (index) {
      case 0:
        imagePath = 'assets/images/images_display_refiere_aqui/reportados.png';
        break;
      case 1:
        imagePath =
            'assets/images/images_display_refiere_aqui/hipotecario.png';
        break;
      case 2:
        imagePath = 'assets/images/images_display_refiere_aqui/inversiones.png';
        break;
      case 3:
        imagePath = 'assets/images/images_display_refiere_aqui/creditos.png';
        break;
      case 4:
        imagePath = 'assets/images/images_display_refiere_aqui/seguros.png';
        break;
      case 5:
        imagePath = 'assets/images/images_display_refiere_aqui/pensiones.png';
        break;
    }
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          selectOnly(index);
          _toggleVisibility();
        },
        child: Ink(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.transparent,
                spreadRadius: 0,
                blurRadius: 20,
                offset: Offset(0, 0),
              ),
            ],
            border: Border.all(
              color: isButtonSelectedList[index]
                  ? Colors.transparent
                  : Colors.transparent,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.01,
              vertical: MediaQuery.of(context).size.width * 0.010,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.19,
                  height: MediaQuery.of(context).size.width * 0.19,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomFontAileronRegular(
                      text: title,
                    ),
                    CustomFontAileronRegular2(
                      text: subtitle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
