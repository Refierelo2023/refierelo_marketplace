import 'dart:io';
import 'dart:math';
// import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:path/path.dart' as path;
import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/Login/otp/insert_number_screen.dart';
import 'package:refierelo_marketplace/data/screens/Register/components/custom_input.dart';
import 'package:refierelo_marketplace/data/screens/Register/components/terms_check.dart';
import 'package:refierelo_marketplace/data/screens/main_screen.dart';
import 'package:refierelo_marketplace/data/screens/otp/components/btn_next.dart';
import 'package:refierelo_marketplace/models/medio_pagos.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
// import 'package:http/http.dart' as http;

class UserDataModelUser {
  final String firstName;
  final String lastName;
  final String identificacion;
  final String gender;
  final String presentacion;
  final String celular;
  final String email;
  final String fechaNac;
  final String ciudad;
  final String pais;
  final String pagos;
  final String entidadFinanciera;
  final String clave1;
  final String clave2;

  UserDataModelUser({
    required this.firstName,
    required this.lastName,
    required this.identificacion,
    required this.gender,
    required this.presentacion,
    required this.celular,
    required this.email,
    required this.fechaNac,
    required this.ciudad,
    required this.pais,
    required this.pagos,
    required this.entidadFinanciera,
    required this.clave1,
    required this.clave2,
  });
}

class UserDataProviderUser extends ChangeNotifier {
  UserDataModelUser userData = UserDataModelUser(
      firstName: '',
      lastName: '',
      identificacion: '',
      gender: '',
      presentacion: '',
      celular: '',
      email: '',
      fechaNac: '',
      ciudad: '',
      pais: '',
      pagos: '',
      entidadFinanciera: '',
      clave1: '',
      clave2: '');

  void updateUserData(UserDataModelUser newData) {
    userData = newData;
    notifyListeners();
  }
}

class RegisterForm extends StatefulWidget {
  final String msisdn;
  final UserProfile user;

  const RegisterForm({
    super.key,
    required this.msisdn,
    required this.user,
  });

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController identificacionController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController presentacionController = TextEditingController();
  final TextEditingController celularController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController fechaNacController = TextEditingController();
  final TextEditingController ciudadController = TextEditingController();
  final TextEditingController paisController = TextEditingController();
  final TextEditingController pagosController = TextEditingController();
  final TextEditingController entidadFinancieraController = TextEditingController();
  final TextEditingController clave1Controller = TextEditingController();
  final TextEditingController clave2Controller = TextEditingController();
  final ImagePicker _imagePicker = ImagePicker();
  PickedFile? _pickedImage;

  List<MedioPago> mediosPagos = [
    MedioPago(id: '1', nombre: 'Daviplata'),
    MedioPago(id: '2', nombre: 'Nequi'),
    MedioPago(id: '3', nombre: 'Cta Ahorro'),
    MedioPago(id: '4', nombre: 'Cta Corriente'),
  ];

  String dropdownValue = 'Daviplata';
  String msisdn = '';
  String sessionString = '';
  static const _chars ='AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  final Random _rnd = Random();

  final _formKey = GlobalKey<FormState>();

  String idMediopago = '';
  String? _selectedGender;

  @override
  void initState() {
    // ignore:todo
    // TODO: implement initState
    super.initState();
    msisdn = widget.msisdn;
    sessionString = getRandomString(30);
    print(sessionString);
    ValidationBuilder.setLocale('es');

    final userData =
        Provider.of<UserDataProviderUser>(context, listen: false).userData;
    firstNameController.text = userData.firstName;
    lastNameController.text = userData.lastName;
    identificacionController.text = userData.identificacion;
    genderController.text = userData.gender;
    presentacionController.text = userData.presentacion;
    celularController.text = userData.celular;
    emailController.text = userData.email;
    fechaNacController.text = userData.fechaNac;
    ciudadController.text = userData.ciudad;
    paisController.text = userData.pais;
    pagosController.text = userData.pagos;
    entidadFinancieraController.text = userData.entidadFinanciera;
    clave1Controller.text = userData.clave1;
    clave2Controller.text = userData.clave2;
  }

  @override
  void dispose() {
    // liberar los recursos de los controladores cuando el widget se elimine
    firstNameController.dispose();
    lastNameController.dispose();
    identificacionController.dispose();
    genderController.dispose();
    presentacionController.dispose();
    celularController.dispose();
    emailController.dispose();
    fechaNacController.dispose();
    ciudadController.dispose();
    pagosController.dispose();
    entidadFinancieraController.dispose();
    clave1Controller.dispose();
    clave2Controller.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    try {
      final pickedImage =
          await _imagePicker.pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        setState(() {
          _pickedImage = PickedFile(pickedImage.path);
        });
        print('Imagen seleccionada correctamente: ${_pickedImage!.path}');
      }
    } catch (e) {
      print('Error al seleccionar la imagen: $e');
    }
  }

  Future<void> enviarWebhook() async {
    const url = "http://194.163.128.196:8000/create_person/";

    FormData formData = FormData.fromMap({
      'name': firstNameController.text,
      'last_name': lastNameController.text,
      'num_document': identificacionController.text,
      'gender': genderController.text,
      'presentation': presentacionController.text,
      'telephone_number': celularController.text,
      'email': emailController.text,
      'birthdate': fechaNacController.text,
      'city': ciudadController.text,
      'country': paisController.text,
      'payment_method': pagosController.text,
      'financial_entity': entidadFinancieraController.text,
      'password': clave1Controller.text,
      'confirm_password': clave2Controller.text,
      'photo_user': await MultipartFile.fromFile(
        _pickedImage!.path,
        filename: path.basename(_pickedImage!.path),
      ),
    });

    try {
      var response = await Dio().post(url, data: formData);

      if (response.statusCode == 200) {
        print('Webhook enviado con éxito');
        print('Respuesta del servidor: ${response.data}');
      } else {
        print('Error al enviar el webhook: ${response.statusCode}');
        
      }
    } catch (e) {
      print('Error al enviar el webhook: $e');
    }
  }

  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

  // Future<String> subscribeNewReferente(
  //     String apellidos,
  //     String nombres,
  //     String documento,
  //     String msisdn,
  //     String mail,
  //     String fechaNac,
  //     String ciudad,
  //     int idMediopago,
  //     String clave1,
  //     String clave2,
  //     sessionString) async {
  //   const int accType = 1;

  // validate the input data
  // Codes:
  // 0 - OK
  // 100 - Invalid last Name
  // 101 - Invalid first Name
  // 102 - Invalid document number
  // 103 - Invalid msisdn
  // 104 - Invalid mail
  // 105 - Invalid date of birth
  // 106 - Invalid city
  // 107 - Invalid password
  // 108 - Invalid idMediopago
  // print("Datos recibidos: " +
  //     apellidos +
  //     "," +
  //     nombres +
  //     "," +
  //     documento +
  //     "," +
  //     msisdn +
  //     "," +
  //     mail +
  //     "," +
  //     fechaNac +
  //     "," +
  //     ciudad +
  //     "," +
  //     idMediopago.toString() +
  //     "," +
  //     clave1 +
  //     "," +
  //     clave2);
  // if (apellidos.isEmpty || apellidos.length < 3) {
  //   return '100';
  // }
  // if (nombres.isEmpty || nombres.length < 3) {
  //   return '101';
  // }
  // if (documento.isEmpty || documento.length < 3) {
  //   return '102';
  // }
  // if (msisdn.isEmpty || msisdn.length < 3) {
  //   return '103';
  // }
  // if (mail.isEmpty || mail.length < 10) {
  //   return '104';
  // }
  // if (fechaNac.isEmpty) {
  //   return '105';
  // }
  // if (ciudad.isEmpty || ciudad.length < 3) {
  //   return '106';
  // }
  // if (idMediopago.isNaN || idMediopago == 0) {
  //   return '108';
  // }
  // if (clave1.isEmpty ||
  //     clave2.isEmpty ||
  //     clave1 != clave2 ||
  //     clave1.length < 4) {
  //   return '107';
  // }

  //   var channel = getChannel();

  //   var response = await ServiceClient(channel)
  //       .referenteRegister(referenteRegisterRequest()
  //         ..msisdn = msisdn
  //         ..apellidos = apellidos
  //         ..nombres = nombres
  //         ..mail = mail
  //         ..fechaNacimiento = fechaNac
  //         ..ciudad = ciudad
  //         ..mediosPagos = idMediopago.toString()
  //         ..entidadFinanciera = entidadFinanciera.text
  //         ..tipoCuenta = '1'
  //         ..clave = clave1
  //         ..sessionString = sessionString
  //         ..date = DateFormat('yyyy-MM-dd').format(DateTime.now()));
  //   channel.shutdown;

  // print("referenteRegister response: " + response.message);
  // return (response.message);
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 30,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: const Color(0xFFffffff),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => const InsertNumberScreen(),
              ),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Center(
                    child: CustomFontAileronBold2(
                      text: 'Datos de tu perfil',
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
                                    image: FileImage(File(_pickedImage!.path)),
                                    fit: BoxFit.cover,
                                  )
                                : const DecorationImage(
                                    image: AssetImage(
                                      'assets/images/images_login/perfil.png',
                                    ) as ImageProvider<Object>,
                                    fit: BoxFit.cover,
                                  ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
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
                    placeholder: 'Nombres',
                    controller: firstNameController,
                    validator: ValidationBuilder().required().build(),
                  ),
                  SizedBox(height: size.height * 0.015),
                  CustomInput(
                    placeholder: 'Apellidos',
                    controller: lastNameController,
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
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      width: size.width * 0.93,
                      height: size.height * 0.06,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: DropdownButton<String>(
                            value: _selectedGender, // Usamos el valor seleccionado del estado
                            isExpanded: true,
                            hint: Text(
                              'Sexo',
                              style: const CustomFontAileronRegular(text: "").getTextStyle(context)                             
                            ),
                            onChanged: (String? newValue) {
                              setState(() {
                                _selectedGender = newValue!;
                                genderController.text = newValue; // Actualizamos el estado con la opción seleccionada
                              });
                            },
                            items: <String>['Masculino', 'Femenino', 'Binario']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child:Text(
                                  value,
                                  style: const CustomFontAileronRegular(text: "").getTextStyle(context),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.015),
                  CustomInput(
                      placeholder: 'Presentación',                  
                      controller: presentacionController,
                      validator: ValidationBuilder().required().build(),
                    ),
                  SizedBox(height: size.height * 0.015),
                  CustomInput(
                    placeholder: "Celular",
                    texto: false,
                    controller: celularController,
                    tipo: TextInputType.number,
                  ),
                  SizedBox(height: size.height * 0.015),
                  CustomInput(
                    placeholder: 'Mail',
                    controller: emailController,
                    validator: ValidationBuilder().required().build(),
                  ),
                  SizedBox(height: size.height * 0.015),
                  CustomInput(
                    placeholder: 'Fecha de Nacimiento',
                    controller: fechaNacController,
                    isDisabled: true,
                    tipo: TextInputType.datetime,
                    validator: ValidationBuilder().required().build(),
                    onTap: (() async {
                      var pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100));
                      if (pickedDate != null) {
                        setState(() {
                          fechaNacController.text =
                              DateFormat('yyyy-MM-dd').format(pickedDate);
                        });
                      }
                    }),
                  ),
                  SizedBox(height: size.height * 0.015),
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
                  // Lista desplegable
                  SizedBox(height: size.height * 0.015),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      width: size.width * 0.93,
                      height: size.height * 0.06,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: DropdownButtonHideUnderline(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: DropdownButton(
                            value: idMediopago == '' ? null : idMediopago,
                            isExpanded: true,
                            hint: const CustomFontAileronRegular(
                              text: 'Medio para recibir pagos',
                            ),
                            items: mediosPagos.map((item) {
                              return DropdownMenuItem(
                                  value: item.id,
                                  child: CustomFontAileronRegular(
                                    text: (item.nombre),
                                  ));
                            }).toList(),
                            onChanged: (val) {
                              setState(() {
                                idMediopago = val.toString();
                                pagosController.text = mediosPagos
                                    .firstWhere(
                                        (element) => element.id == idMediopago)
                                    .nombre;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.015),
                  CustomInput(
                    placeholder:'Entidad financiera',
                    controller: entidadFinancieraController,
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
                          placeholder:'clave 4 digitos',
                          texto: false,
                          ocultarTexto: true,
                          controller: clave1Controller,
                          validator: ValidationBuilder().required().build(),
                          tipo: TextInputType.number,
                        ),
                      ),
                      SizedBox(height: size.height * 0.015),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 5,
                        child: CustomInput(
                          placeholder:'Confirmala',
                          texto: false,
                          ocultarTexto: true,
                          controller: clave2Controller,
                          validator: ValidationBuilder().required().build(),
                          tipo: TextInputType.number,
                        ),
                      ),
                    ],
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
                  BtnNext(
                      press: () async {
                        if (!_formKey.currentState!.validate()) {
                          return;
                        }
                        if (idMediopago == '') {
                          Fluttertoast.showToast(
                              msg: 'Seleccione un medio de pago',
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0);
                          return;
                        }
                        if (clave1Controller.text != clave2Controller.text) {
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
                        Provider.of<UserDataProviderUser>(context,
                                listen: false)
                            .updateUserData(
                          UserDataModelUser(
                            firstName: firstNameController.text,
                            lastName: lastNameController.text,
                            identificacion: identificacionController.text,
                            gender: identificacionController.text,
                            presentacion: presentacionController.text ,
                            celular: celularController.text,
                            email: emailController.text,
                            fechaNac: fechaNacController.text,
                            ciudad: ciudadController.text,
                            pais: paisController.text,
                            pagos: pagosController.text,
                            entidadFinanciera: entidadFinancieraController.text,
                            clave1: clave1Controller.text,
                            clave2: clave2Controller.text,
                          ),
                        );
                        // Imprimir valores antes de enviar el webhook
                        print('name: ${firstNameController.text}');
                        print('last_name: ${lastNameController.text}');
                        print('num_document: ${identificacionController.text}');
                        print('photo_user: ${_pickedImage!.path}');
                        print('gender: ${genderController.text}');
                        print('telephone_number: ${celularController.text}');
                        print('email: ${emailController.text}');
                        print('birthdate: ${fechaNacController.text}');
                        print('country: ${ciudadController.text}');
                        print('city: ${ciudadController.text}');
                        print('payment_method: ${pagosController.text}');
                        print('financial_entity: ${entidadFinancieraController.text}');
                        print('password: ${clave1Controller.text}');
                        print('Confirmar: ${clave2Controller.text}');
                        enviarWebhook();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const MainScreen(),
                          ),
                        );
                      },
                      title: 'Crear cuenta'),
                  SizedBox(height: size.height * 0.02),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
