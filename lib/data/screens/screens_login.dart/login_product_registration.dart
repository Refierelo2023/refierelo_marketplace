import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/main.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_points_calculate.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_points_calculate2.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class LoginProductRegistration extends StatefulWidget {
  const LoginProductRegistration({super.key});

  @override
  LoginProductRegistrationState createState() =>
      LoginProductRegistrationState();
}

void showBubbleMessage(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("¡ Importante !"),
        content: const Text(
            "Comisión vigente año 2024 pasarela de pagos 2.7% + \$800 Cop, la tárifa más baja del mercado"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cerrar'),
          ),
        ],
      );
    },
  );
}
class LoginProductRegistrationState extends State<LoginProductRegistration> {
  Color borderColor3 =
      Colors.transparent; // Color inicial del borde del contenedor 3
  Color borderColor4 =
      Colors.transparent; // Color inicial del borde del contenedor 4

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
              vertical: MediaQuery.of(context).size.width * buttonPaddingHorizontalPercentage,
              horizontal: MediaQuery.of(context).size.width *buttonPaddingHorizontalPercentage,
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
      child: Padding(
        padding: const EdgeInsets.only(right: 5.0),
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
              vertical: 15.0,
              horizontal: 15.0,
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
      ),
    );
  }
  Widget buildPoints() {
    String selectedResult = getResultForSelectedValue(dropdownValue);
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 5.0, right: 90, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: CustomFontAileronBold2(
                text: 'Tienda Virtual',
              ),
            ),
            const Center(
              child: CustomFontAileronRegular(
                text: '¡ Excelente vas muy bien, registra tus productos !',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            // Imagen de perfil y texto
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Stack(
                  children: [
                    Container(
                      width: 180,
                      height: 120,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/images_login/product.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: () {
                          // Acción para cargar imagen desde la galería
                          // (debes implementar la lógica para esto)
                        },
                        child: const Icon(Icons.camera_alt),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10), // Espacio entre la imagen y el texto
                GestureDetector(
                  onTap: () {
                    // Acción para abrir la galería
                    // (debes implementar la lógica para esto)
                  },
                  child: const Align(
                    alignment: Alignment.center,
                    child: CustomFontAileronBold2(
                      text: "Producto 1",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // TextField 1: Nombre Comercial
            TextField(
              decoration: InputDecoration(
                labelText: 'Nombre Producto',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Color(0xFF02B5E7)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Color(0xFF02B5E7)),
                ),
                // fillColor: const Color(0xFFf4f4f4),
                // filled: true,
                labelStyle: const TextStyle(
                    fontFamily: "Aileron",
                    fontSize: 14,
                    color: Color(0xFF003366)),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 15.0),
              ),
            ),

            const SizedBox(height: 10),
            const LoginPointsCalculate(), // Contenedor de Precio
            const SizedBox(height: 10),
            const LoginPointsCalculate2(),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomDropdown(
                  labelText: "Beneficio Referido",
                  items: const [
                    '5 % Descuento',
                    '6 % Descuento',
                    '7 % Descuento',
                    '8 % Descuento',
                    '9 % Descuento',
                    '10 % Descuento',
                    '11 % Descuento',
                    '12 % Descuento',
                    '13 % Descuento',
                    '14 % Descuento',
                    '15 % Descuento',
                    'Regalo Sorpresa',
                  ],
                  value: selectedValue, // <--- Establece el valor seleccionado
                  onChanged: (newValue) {
                    setState(() {
                      selectedValue = newValue;
                    });
                  },
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: TextField(
                      onTap: () {
                        setState(() {
                          borderColor4 = const Color(0xFF02B5E7);
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Código para reclamar',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: borderColor4),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              const BorderSide(color: Color(0xFF02B5E7)),
                        ),
                        // fillColor: const Color(0xFFf4f4f4),
                        // filled: true,
                        labelStyle: const TextStyle(
                            fontFamily: "Aileron",
                            fontSize: 14,
                            color: Color(0xFF003366)),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 15.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(padding: EdgeInsets.only(right: 10)),
                const CustomFontAileronRegular(
                  text: '¿Requieres pasarela de pagos?',
                  textAlign: TextAlign.center,
                ),
                const Spacer(), // Añadir espacio para alinear a la derecha
                Padding(
                  padding: const EdgeInsets.only(
                      right:
                          40), // Espacio negativo para mover el Row a la izquierda
                  child: Row(
                    children: [
                      const Text("Si"),
                      CupertinoSwitch(
                        value: switchValue,
                        onChanged: (bool newValue) {
                          setState(() {
                            switchValue = newValue;
                          });
                          // Aquí puedes manejar la lógica cuando el usuario cambie el estado del Switch
                        },
                        activeColor: const Color(0xFF003366),
                        trackColor: const Color(0xFF04efef),
                        onLabelColor: const Color(0xFFFFFFFF),
                      ),
                      const Text("No"),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            if (!switchValue)
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Padding(padding: EdgeInsets.only(right: 10)),
                      Icon(
                        Icons.check_circle_rounded,
                        color: Color(0xFF7DD218),
                      ),
                      SizedBox(width: 10),
                      Center(
                        child: CustomFontAileronBold(
                          text: "\$ 1.880",
                          fontSize: 0.043,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Llama al método para mostrar el mensaje estilo burbuja
                          showBubbleMessage(context);
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(
                            bottom: 9,
                            right: 8,
                            left: 0,
                          ),
                          child: Icon(
                            Icons.error, // Icono de alerta
                            color: Color(0xFF003366), // Color del icono
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Center(
                    child: CustomFontAileronRegular(
                      text: "Comisión pasarela de pagos",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            if (switchValue)
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(right: 10)),
                      Icon(
                        Icons.warning_rounded,
                        color: Color(0xFFCE8F21),
                      ),
                      SizedBox(width: 10),
                      Align(
                        child: CustomFontAileronRegular(
                          text:
                              "¡ Tu comunidad no podrá comprar tus productos !",
                          fontSize: 0.035,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            const SizedBox(height: 10),
            // Contenedor de precio final //////////////////
            // TextField(
            //   decoration: InputDecoration(
            //     labelText: 'Precio final',
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(15),
            //       borderSide: const BorderSide(color: Color(0xFF02B5E7)),
            //     ),
            //     focusedBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(15),
            //       borderSide: const BorderSide(color: Color(0xFF02B5E7)),
            //     ),
            //     prefixIcon: const Icon(
            //       Icons.monetization_on_outlined,
            //       color: Color(0xFF003366),
            //     ),
            //     // fillColor: const Color(0xFFf4f4f4), // Color de fondo
            //     // filled: true,
            //     labelStyle: const TextStyle(
            //         fontFamily: "Aileron",
            //         fontSize: 14,
            //         color: Color(0xFF003366)),
            //     contentPadding: const EdgeInsets.symmetric(
            //         vertical: 15.0, horizontal: 15.0),
            //   ),
            // ),
            const SizedBox(height: 20),
            const Padding(padding: EdgeInsets.only(right: 15)),
            const CustomFontAileronRegular(
              text:
                  'Reseña tu producto para atraer tu cliente final, esta descripción aparecera en los mensajes cuando nuestros Referentes refieren tu producto',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            TextField(
              maxLines: 4,
              textAlign: TextAlign.justify,
              decoration: InputDecoration(
                labelText: 'Reseña de producto',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Color(0xFF02B5E7)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Color(0xFF02B5E7)),
                ),
                fillColor: const Color(0xFFffffff), // Color de fondo
                filled: true,
                labelStyle: const TextStyle(
                    fontFamily: "Aileron",
                    fontSize: 14,
                    color: Color(0xFF003366)),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 15.0),
              ),
            ),
            const SizedBox(height: 30),
            const CustomFontAileronBold(
              text: 'Agrega contenido formato historias para tu producto',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Padding(padding: EdgeInsets.only(right: 15)),
            const CustomFontAileronRegular(
              text:
                  'Tu comunidad de Referentes utiliza esta herramienta para atraer nuevos clientes orgánicamente el alcance se multiplica hasta por 500 por Referente que comparte este contenido',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 0),
            GestureDetector(
              onTap: () {
                // Acción para cargar imagen o video desde la galería
                // Implementa la lógica para cargar desde la galería
              },
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 90),
                height: 320.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image:
                        AssetImage('assets/images/images_login/historias.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.camera_alt, color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const CustomFontAileronBold(
              text:
                  'Para un mejor resultado asigna una recompensa a esta acción',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Padding(padding: EdgeInsets.only(right: 15)),
            const CustomFontAileronRegular(
              text:
                  'Tu comunidad obtendrá una recompensa cada vez que comparte el contenido en sus redes sociales, aplica una única vez',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildRewardDropdown(),
                buildPoints(),
              ],
            ),
            const SizedBox(height: 20),
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
    );
  }
}
