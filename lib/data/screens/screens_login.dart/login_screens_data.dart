import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_validator/form_validator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/Register/components/custom_input.dart';
import 'package:refierelo_marketplace/data/screens/Register/components/terms_check.dart';
import 'package:refierelo_marketplace/data/screens/otp/components/btn_next.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_screens_setup_account.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:http/http.dart' as http;

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
      identificacion: '',
      presentacion: '',
      pais: '',
      ciudad: '',
      direccion: '',
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
  TextEditingController claveController = TextEditingController();
  TextEditingController confirmaclaveController = TextEditingController();
  TextEditingController webController = TextEditingController();
  TextEditingController instagramController = TextEditingController();
  final ImagePicker _imagePicker = ImagePicker();
  PickedFile? _pickedImage;

  final _formKey = GlobalKey<FormState>();

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

  @override
  void dispose() {
    // liberar los recursos de los controladores cuando el widget se elimine
    nombreComercialController.dispose();
    presentacionController.dispose();
    paisController.dispose();
    ciudadController.dispose();
    direccionController.dispose();
    celularController.dispose();
    claveController.dispose();
    confirmaclaveController.dispose();
    webController.dispose();
    instagramController.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    try {
      final pickedImage =
          await _imagePicker.pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        setState(() {
          XFile? _pickedImage;
        });
      }
    } catch (e) {
      print('Error al seleccionar la imagen: $e');
    }
  }

  Future<void> enviarWebhook() async {
    final url = Uri.parse("http://5.189.161.131:5000/webhook");
    final data = {
      'nombreComercial': nombreComercialController.text,
      'presentacion': presentacionController.text,
      'pais': paisController.text,
      'ciudad': ciudadController.text,
      'Dirección (opcional)': direccionController.text,
      'celular': celularController.text,
      "clave": claveController.text,
      'Confirmala': confirmaclaveController.text,
      'Pagina web': webController.text,
      'Red social': instagramController.text,
      // ... otras propiedades del formulario
    };

    final respuesta = await http.post(url, body: data);
    if (respuesta.statusCode == 200) {
      print('Webhook enviado con éxito');
    } else {
      print('Error al enviar el webhook: ${respuesta.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ChangeNotifierProvider(
      create: (context) => UserDataProvider(),
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F6F9),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: 30,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const LoginScreensSetupAccount(),
                ),
              );
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Center(
                      child: CustomFontAileronBold2(
                        text: 'Datos básicos',
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    const Center(
                      child: CustomFontAileronRegular(
                        text:
                            'Información se mostrara en tu perfil públicamente, puedes editar esta información cuando quieras',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    InkWell(
                      onTap: () async {
                        await _pickImage();
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: _pickedImage != null
                                  ? DecorationImage(
                                      image:
                                          FileImage(File(_pickedImage!.path)),
                                      fit: BoxFit.cover,
                                    )
                                  : const DecorationImage(
                                      image: AssetImage(
                                        'assets/images/images_login/perfil.png',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                            ),
                          ),
                          SizedBox(width: size.width * 0.02),
                          Positioned(
                            bottom: 5,
                            right: 0,
                            child: GestureDetector(
                              onTap: () async {
                                await _pickImage();                                
                              },
                              child: const Icon(Icons.camera_alt),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.015),
                    CustomInput(
                      placeholder: 'Nombre Comercial',
                      controller: nombreComercialController,
                      validator: ValidationBuilder().required().build(),
                    ),
                    SizedBox(height: size.height * 0.015),
                    CustomInput(
                      placeholder: 'identificación',
                      texto: false,
                      controller: identificacionController,
                      tipo: TextInputType.number,
                    ),
                    SizedBox(height: size.height * 0.015),
                    CustomInput(
                      placeholder: 'Presentación',
                      texto: false,
                      controller: presentacionController,
                      validator: ValidationBuilder().required().build(),
                    ),
                    SizedBox(height: size.height * 0.015),
                    // Contenedores de País y Ciudad
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: CustomInput(
                            placeholder: 'País',
                            controller: paisController,
                            validator: ValidationBuilder().required().build(),
                          ),
                        ),
                        Expanded(
                          child: CustomInput(
                            placeholder: 'Ciudad',
                            controller: ciudadController,
                            validator: ValidationBuilder().required().build(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.015),
                    CustomInput(
                      placeholder: 'Dirección (opcional)',
                      controller: direccionController,
                      validator: ValidationBuilder().required().build(),
                    ),
                    SizedBox(height: size.height * 0.015),
                    CustomInput(
                      placeholder: 'Celular',
                      controller: celularController,
                      tipo: TextInputType.number,
                      validator: ValidationBuilder().required().build(),
                    ),
                    SizedBox(height: size.height * 0.015),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 5,
                          child: CustomInput(
                            placeholder: 'Clave 4 dígitos',
                            texto: false,
                            ocultarTexto: true,
                            controller: claveController,
                            tipo: TextInputType.number,
                            validator: ValidationBuilder().required().build(),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 4,
                          child: CustomInput(
                            placeholder: 'Confirmala',
                            texto: false,
                            ocultarTexto: true,
                            controller: confirmaclaveController,
                            tipo: TextInputType.number,
                            validator: ValidationBuilder().required().build(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.01),
                    CustomInput(
                      placeholder: 'Pagina web',
                      controller: webController,
                      validator: ValidationBuilder().required().build(),
                    ),
                    SizedBox(height: size.height * 0.01),
                    CustomInput(
                      placeholder: 'Red social',
                      controller: instagramController,
                      validator: ValidationBuilder().required().build(),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [TermsCheck()],
                        ),
                        Column(
                          children: [
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                text: 'Al crear una cuenta aseguras haber ',
                                style: const CustomFontAileronRegular(
                                  text: " ",
                                ).getTextStyle(context),
                                children: [
                                  TextSpan(
                                    text: 'leído y estar \nde acuerdo con los',
                                    style: const CustomFontAileronRegular(
                                      text: " ",
                                    ).getTextStyle(context),
                                  ),
                                  TextSpan(
                                    text: ' Terminos y condiciones ',
                                    style: const CustomFontAileronRegularTur(
                                      text: " ",
                                    ).getTextStyle(context),
                                  ),
                                  TextSpan(
                                    text: 'y con\nla',
                                    style: const CustomFontAileronRegular(
                                      text: " ",
                                    ).getTextStyle(context),
                                  ),
                                  TextSpan(
                                    text: ' Politica',
                                    style: const CustomFontAileronRegularTur(
                                      text: " ",
                                    ).getTextStyle(context),
                                  ),
                                  TextSpan(
                                    text: 'de privacidad',
                                    style: const CustomFontAileronRegularTur(
                                      text: " ",
                                    ).getTextStyle(context),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: size.height * 0.03),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: size.height * 0.02),
                        // Botón Guardar
                        BtnNext(
                            press: () async {
                              if (!_formKey.currentState!.validate()) {
                                return;
                              }
                              if (claveController.text !=
                                  confirmaclaveController.text) {
                                Fluttertoast.showToast(
                                    msg: 'Las claves no coinciden',
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                                return;
                              }
                              Provider.of<UserDataProvider>(context,
                                      listen: false)
                                  .updateUserData(
                                UserDataModel(
                                  nombreComercial:
                                      nombreComercialController.text,
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
                              print(
                                  'Nombre Comercial: ${nombreComercialController.text}');
                              print(
                                  'Presentación: ${presentacionController.text}');
                              print('País: ${paisController.text}');
                              print('Ciudad: ${ciudadController.text}');
                              print('Dirección: ${direccionController.text}');
                              print('Celular: ${celularController.text}');
                              print('Clave: ${claveController.text}');
                              print(
                                  'Confirmala: ${confirmaclaveController.text}');
                              print('Pagina Web: ${webController.text}');
                              print('Red social: ${instagramController.text}');
                              enviarWebhook();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const LoginScreensSetupAccount(),
                                ),
                              );
                            },
                            title: "Guardar")
                      ],
                    ),
                    SizedBox(height: size.height * 0.01),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
