import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_screens_setup_account.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
// import 'package:http/http.dart' as http;

class UserDataModel {
  String nombreComercial;
  String identificacion;
  String presentacion;
  String pais;
  String ciudad;
  String direccion;
  String celular;
  String web;
  String instagram;

  UserDataModel({
    required this.nombreComercial,
    required this.identificacion,
    required this.presentacion,
    required this.pais,
    required this.ciudad,
    required this.direccion,
    required this.celular,
    required this.web,
    required this.instagram,
  });
}

class UserDataProvider extends ChangeNotifier {
  UserDataModel userData = UserDataModel(
      nombreComercial: '',
      identificacion:'',
      presentacion: '',
      pais: '',
      ciudad: '',
      direccion:'',
      celular: '',
      web: '',
      instagram: '');

  void updateUserData(UserDataModel newData) {
    userData = newData;
    notifyListeners();
  }
}

class LoginScreensData extends StatefulWidget {
  const LoginScreensData({super.key});

  @override
  LoginScreensDataState createState() => LoginScreensDataState();
}

class LoginScreensDataState extends State<LoginScreensData> {
  TextEditingController nombreComercialController = TextEditingController();
  TextEditingController identificacionController = TextEditingController();
  TextEditingController presentacionController = TextEditingController();
  TextEditingController paisController = TextEditingController();
  TextEditingController ciudadController = TextEditingController();
  TextEditingController direccionController = TextEditingController();
  TextEditingController celularController = TextEditingController();
  TextEditingController webController = TextEditingController();
  TextEditingController instagramController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Recuperar datos y establecer en los TextField
    final userData =
        Provider.of<UserDataProvider>(context, listen: false).userData;
    nombreComercialController.text = userData.nombreComercial;
    identificacionController.text = userData.identificacion;
    presentacionController.text = userData.presentacion;
    paisController.text = userData.pais;
    ciudadController.text = userData.ciudad;
    direccionController.text = userData.direccion;
    celularController.text = userData.celular;
    webController.text = userData.web;
    instagramController.text = userData.instagram;
  }

  Color borderColor3 =
      Colors.transparent; // Color inicial del borde del contenedor 3
  Color borderColor4 =
      Colors.transparent; // Color inicial del borde del contenedor 4

  Widget _buildButton(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width * 0.25;
    double buttonPaddingHorizontalPercentage = 0.025;

    return GestureDetector(
      onTap: () {
        Provider.of<UserDataProvider>(context, listen: false).updateUserData(
          UserDataModel(
            nombreComercial: nombreComercialController.text,
            identificacion: identificacionController.text,
            presentacion: presentacionController.text,            
            pais: paisController.text,
            ciudad: ciudadController.text,
            direccion: direccionController.text,
            celular: celularController.text,
            web: webController.text,
            instagram: instagramController.text,
          ),
        );
        // Imprimir valores antes de enviar el webhook
        // print('Nombre Comercial: ${nombreComercialController.text}');
        // print('Presentación: ${presentacionController.text}');
        // print('País: ${paisController.text}');
        // print('Ciudad: ${ciudadController.text}');
        // print('Dirección: ${direccionController.text}');
        // print('Celular: ${celularController.text}');
        // enviarWebhook();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreensSetupAccount(),
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
                'Guardar',
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

  @override
  // void dispose() {
  //   // liberar los recursos de los controladores cuando el widget se elimine
  //   nombreComercialController.dispose();
  //   presentacionController.dispose();
  //   paisController.dispose();
  //   ciudadController.dispose();
  //   direccionController.dispose();
  //   celularController.dispose();
  //   // Libera otros controladores aquí si los tienes
  //   super.dispose();
  // }
  // Future<void> enviarWebhook() async {
  //   final url = Uri.parse("http://5.189.161.131:5000/webhook");
  //   final data = {
  //     'nombreComercial': nombreComercialController.text,
  //     'presentacion': presentacionController.text,
  //     'pais': paisController.text,
  //     'ciudad': ciudadController.text,
  //     'Dirección (opcional)': direccionController.text,
  //     'celular': celularController.text,
  //     // ... otras propiedades del formulario
  //   };

  //   final respuesta = await http.post(url, body: data);
  //   if (respuesta.statusCode == 200) {
  //     print('Webhook enviado con éxito');
  //   } else {
  //     print('Error al enviar el webhook: ${respuesta.statusCode}');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserDataProvider(),
      child: Scaffold(
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
                  text: 'Datos básicos',
                ),
              ),
              const Center(
                child: CustomFontAileronRegular(
                  text:
                      'Información se mostrara en tu perfil públicamente, puedes editar esta información cuando quieras',
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      const SizedBox(width: 40),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/images_login/perfil.png'),
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
                  const SizedBox(
                      width: 10), // Espacio entre la imagen y el texto
                  GestureDetector(
                    onTap: () {
                      // Acción para abrir la galería
                      // (debes implementar la lógica para esto)
                    },
                    child: const Text(
                      'Agregar imagen de perfil',
                      style: TextStyle(
                        color: Colors.blue, // Cambia el color según tu diseño
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              TextField(
                controller: nombreComercialController,
                decoration: InputDecoration(
                  labelText: 'Nombre Comercial',
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
              TextField(
                controller: identificacionController,
                decoration: InputDecoration(
                  labelText: 'Identificación Comercial',
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
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 10),
              TextField(
                controller: presentacionController,
                decoration: InputDecoration(
                  labelText: 'Presentación',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Color(0xFF02B5E7)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Color(0xFF02B5E7)),
                  ),
                  // fillColor: const Color(0xFFf4f4f4), // Color de fondo
                  //         filled: true,
                  labelStyle: const TextStyle(
                      fontFamily: "Aileron",
                      fontSize: 14,
                      color: Color(0xFF003366)),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 15.0),
                ),
              ),
              const SizedBox(height: 10),
              // Contenedores de País y Ciudad
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: TextField(
                        controller: paisController,
                        onTap: () {
                          setState(() {
                            borderColor3 = const Color(0xFF02B5E7);
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Pais',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: borderColor3),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                const BorderSide(color: Color(0xFF02B5E7)),
                          ),
                          // fillColor: const Color(0xFFf4f4f4), // de color de fondo
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
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: TextField(
                        controller: ciudadController,
                        onTap: () {
                          setState(() {
                            borderColor4 = const Color(0xFF02B5E7);
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Ciudad',
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
              const SizedBox(height: 10),
              // TextField 2: Dirección web
              TextField(
                controller: direccionController,
                decoration: InputDecoration(
                  labelText: 'Dirección (opcional)',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Color(0xFF02B5E7)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Color(0xFF02B5E7)),
                  ),
                  // fillColor: const Color(0xFFf4f4f4), // Color de fondo
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
              // TextField 2: Dirección web
              TextField(
                controller: celularController,
                decoration: InputDecoration(
                  labelText: 'Celular',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Color(0xFF02B5E7)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Color(0xFF02B5E7)),
                  ),
                  // fillColor: const Color(0xFFf4f4f4), // Color de fondo
                  // filled: true,
                  labelStyle: const TextStyle(
                      fontFamily: "Aileron",
                      fontSize: 14,
                      color: Color(0xFF003366)),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 15.0,
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: TextField(
                        onTap: () {
                          setState(() {
                            borderColor3 = const Color(0xFF02B5E7);
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Clave 4 dígitos',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: borderColor3),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                const BorderSide(color: Color(0xFF02B5E7)),
                          ),
                          // fillColor: const Color(0xFFf4f4f4), // de color de fondo
                          // filled: true,
                          labelStyle: const TextStyle(
                              fontFamily: "Aileron",
                              fontSize: 14,
                              color: Color(0xFF003366)),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 15.0),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
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
                          labelText: 'Confirma tu Clave',
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
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              TextField(
                controller: webController,
                decoration: InputDecoration(
                  labelText: 'Pagina web',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Color(0xFF02B5E7)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Color(0xFF02B5E7)),
                  ),
                  prefixIcon: const Icon(
                    Icons.link,
                    color: Color(0xFF003366),
                  ),
                  // fillColor: const Color(0xFFf4f4f4), // Color de fondo
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
              TextField(
                controller: instagramController,
                decoration: InputDecoration(
                  labelText: 'Red social',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Color(0xFF02B5E7)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Color(0xFF02B5E7)),
                  ),
                  prefixIcon: const Icon(
                    Icons.link,
                    color: Color(0xFF003366),
                  ),
                  // fillColor: const Color(0xFFf4f4f4), // Color de fondo
                  // filled: true,
                  labelStyle: const TextStyle(
                      fontFamily: "Aileron",
                      fontSize: 14,
                      color: Color(0xFF003366)),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 15.0),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 20),
                  // Botón Guardar
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
}
