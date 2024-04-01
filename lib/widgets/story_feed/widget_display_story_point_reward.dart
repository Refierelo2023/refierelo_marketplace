import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/main.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class WidgetDisplayStoryPointReward extends StatefulWidget {
  const WidgetDisplayStoryPointReward({super.key});

  @override
  WidgetDisplayStoryPointRewardState createState() =>
      WidgetDisplayStoryPointRewardState();
}

class WidgetDisplayStoryPointRewardState
    extends State<WidgetDisplayStoryPointReward> {
  Color borderColor3 =
      Colors.transparent; // Color inicial del borde del contenedor 3
  Color borderColor4 = Colors.transparent;
  late List<bool> isButtonSelectedList;
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    isButtonSelectedList = List.generate(5, (index) => false);
  }

  void selectOnly(int index) {
    setState(() {
      for (int i = 0; i < isButtonSelectedList.length; i++) {
        isButtonSelectedList[i] = (i == index);
      }
    });
  }

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  Widget _buildButton(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width * 0.25;
    double buttonPaddingHorizontalPercentage = 0.025;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => const MyApp(),
          ),
        );
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
              child: const Text(
                'Publicar',
                style: TextStyle(
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

  bool switchValue = false; // bool para CupertunoSwitch

  String? selectedValue;

  // final TextEditingController _controller = TextEditingController();

  String? dropdownValue;
  List<String> pointsList = [
    '0 Puntos',
    '2 Puntos',
    '4 Puntos',
    '6 Puntos',
    '8 Puntos',
    '10 Puntos',
    '20 Puntos',
  ];

  List<String> results = [
    "\$ 0",
    "\$ 50",
    "\$ 100",
    "\$ 150",
    "\$ 200",
    "\$ 250",
    "\$ 500",
  ];

  Widget buildRewardDropdown() {
    return Expanded(
      flex: 7,
      child: DropdownButtonFormField<String>(
        value: dropdownValue,
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        decoration: InputDecoration(
          labelText: 'Recompensa Referente',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: borderColor3),
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
            vertical: 14.0,
            horizontal: 14.0,
          ),
        ),
        items: [
          '0 Puntos',
          '2 Puntos',
          '4 Puntos',
          '6 Puntos',
          '8 Puntos',
          '10 Puntos',
          '20 Puntos',
        ].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }

  Widget buildPoints() {
    String selectedResult = getResultForSelectedValue(dropdownValue);
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.only(left: 5.0, right: 0, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Align(
                alignment: Alignment.center,
                child: CustomFontAileronBold(
                  text: selectedResult,
                  fontSize: 0.043,
                ),
              ),
            ),
            const SizedBox(width: 5),
            const Center(
              child: CustomFontAileronRegular(
                text: "Cop",
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String getResultForSelectedValue(String? selectedValue) {
    int index = pointsList.indexOf(selectedValue ?? '');
    if (index >= 0 && index < results.length) {
      return results[index];
    } else {
      return "\$ 0"; // O un valor predeterminado en caso de no encontrarse
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 9),
                height: 5, // Altura de la línea
                decoration: const BoxDecoration(
                  color: Color(0xFF666666), 
                  borderRadius: BorderRadius.all(Radius.circular(20)), 
                ),
                width: MediaQuery.of(context).size.width * 0.12, 
              ),
              const SizedBox(height: 10.0),
              SizedBox(
              width: MediaQuery.of(context).size.width * 0.15,
              height: MediaQuery.of(context).size.width * 0.15,
              child: Image.asset(
                'assets/images/images_display_refiere_aqui/gafasoscuras.png',
                fit: BoxFit.cover,
              ),
            ),
              const Align(
                alignment: Alignment.center,
                child: CustomFontAileronBold(
                  text: "Impulsa tu historia con tu comunidad",
                ),
              ),
              const SizedBox(height: 10),           
              const CustomFontAileronRegular(
                text:'Tu comunidad obtendrá una recompensa por compartir tu historia en sus redes sociales, aplica una única vez',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildRewardDropdown(),
                    buildPoints(),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildButton(context),
                  const SizedBox(height: 10),
                ],
              ),
            ],
          ),
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
        imagePath = 'assets/images/images_display/facebook.png';
        break;
      case 1:
        imagePath = 'assets/images/images_display/instagram.png';
        break;
      case 2:
        imagePath = 'assets/images/images_display/whatsApp.png';
        break;
      case 3:
        imagePath = 'assets/images/images_display/Messenger3.png';
        break;
      case 4:
        imagePath = 'assets/images/images_display/compartir.png';
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
                horizontal: MediaQuery.of(context).size.width * 0.05,
                vertical: MediaQuery.of(context).size.width * 0.010),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.09,
                  height: MediaQuery.of(context).size.width * 0.09,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover, // Alto de la imagen
                  ),
                ),
                // Espacio entre la imagen y el texto
              ],
            ),
          ),
        ),
      ),
    );
  }
}
