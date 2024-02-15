import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:form_validator/form_validator.dart';
import 'package:intl/intl.dart';
import 'package:grpc/grpc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:refierelo_marketplace/data/screens/Register/components/components.dart';
import 'package:refierelo_marketplace/data/screens/Register/components/custom_input.dart';
import 'package:refierelo_marketplace/data/screens/Register/components/terms_check.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/bottom_navigation_custom.dart';
import 'package:refierelo_marketplace/data/screens/otp/components/btn_next.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';
import 'package:refierelo_marketplace/models/medio_pagos.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';



class RegisterForm extends StatefulWidget {
  final String msisdn;
  const RegisterForm({super.key, required this.msisdn});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _fechaNacController = TextEditingController();
  final TextEditingController _ciudadController = TextEditingController();
  final TextEditingController _clave1Controller = TextEditingController();
  final TextEditingController _clave2Controller = TextEditingController();
  TextEditingController identificacion = TextEditingController();
  TextEditingController ciudad = TextEditingController();
  TextEditingController entidadFinanciera = TextEditingController();

  List<MedioPago> mediosPagos = [];

  String dropdownValue = 'Daviplata';
  String msisdn = '';
  String sessionString = '';
  static const _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  final Random _rnd = Random();

  final _formKey = GlobalKey<FormState>();

  String idMediopago = '';

  @override
  void initState() {
    //ignore:todo
    // TODO: implement initState
    super.initState();
    msisdn = widget.msisdn;
    sessionString = getRandomString(30);
    print(sessionString);
    ValidationBuilder.setLocale('es');
    
    getMediosPagos();
  }

  Future<void> getMediosPagos() async {
    var channel = getChannel();
    var res = ServiceClient(channel).getMediosPagos(medioPagoRequest(sessionString: ''));

    res.listen((value) {
      setState(() {
        mediosPagos.add(MedioPago(id: value.idMedioPago, nombre: value.medioPago));
      });
    }).onDone(() { 
      channel.shutdown();
    });
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
    //Codes:
    // 0 - OK
    //100 - Invalid last Name
    //101 - Invalid first Name
    //102 - Invalid document number
    //103 - Invalid msisdn
    //104 - Invalid mail
    //105 - Invalid date of birth
    //106 - Invalid city
    //107 - Invalid password
    //108 - Invalid idMediopago
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

  //   print("referenteRegister response: " + response.message);
  //   return (response.message);
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: size.width,
                  height: size.height * 0.1,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xff02B5E7), Color(0xff003366)]),
                  ),
                  child: Image.asset('assets/images/otp/banner.png'),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                CustomInput(
                  placeholder: 'Miguel Angel',
                  title: const CustomFontAileronRegular(text: 'Nombres'),
                  controller: _firstNameController,
                  validator: ValidationBuilder().required().build(),
                ),
                SizedBox(height: size.height * 0.02),
                CustomInput(
                  placeholder: 'Rodriguez Gómez',
                  title: const CustomFontAileronRegular(text: 'Apellidos'),
                  controller: _lastNameController,
                  validator: ValidationBuilder().required().build(),
                ),
                SizedBox(height: size.height * 0.02),
                CustomInput(
                  placeholder: '1023869988',
                  title: const CustomFontAileronRegular(text: 'Identificación'),
                  texto: false,
                  controller: identificacion,
                ),
                SizedBox(height: size.height * 0.02),
                CustomInput(
                  placeholder: msisdn,
                  title: const CustomFontAileronRegular(text: 'Celular'),
                  texto: false,
                  isDisabled: true,
                ),
                SizedBox(height: size.height * 0.02),
                CustomInput(
                    placeholder: '',
                    title: const CustomFontAileronRegular(text: 'Mail'),
                    controller: _emailController,
                    validator: ValidationBuilder().required().build(),),
                SizedBox(height: size.height * 0.02),
                
                CustomInput(
                  placeholder: 'Toque para seleccionar la fecha',
                  title: const CustomFontAileronRegular(text: 'Fecha de Nacimiento'),
                  controller: _fechaNacController,
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
                        _fechaNacController.text =
                            DateFormat('yyyy-MM-dd').format(pickedDate);
                      });
                    }
                  }),
                ),
                SizedBox(height: size.height * 0.02),
                CustomInput(
                  placeholder: '',
                  title: const CustomFontAileronRegular(text: 'Ciudad'),
                  controller: _ciudadController,
                  validator: ValidationBuilder().required().build(),
                ),
                //Lista desplegable
                SizedBox(height: size.height * 0.02),
                Container(padding: const EdgeInsets.only(left: 20), width: size.width, child: const Text('Medio para recibir pagos', textAlign: TextAlign.start),),
                Container(
                  width: size.width * 0.9,
                  height: size.height * 0.07,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: DropdownButtonHideUnderline(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: DropdownButton(
                        isExpanded: true,
                        hint: const Text('Seleccione un medio de pago'),
                        items: mediosPagos.map((item) {
                          return DropdownMenuItem(
                              value: item.id,
                              child: Text(item.nombre));
                        }).toList(),
                        onChanged: (val) {
                          setState(() {
                            idMediopago = val.toString();
                          });
                        },
                        value: idMediopago==''?null:idMediopago,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                CustomInput(
                  placeholder: 'XXXXXXXXXX',
                  title: const CustomFontAileronRegular(text: 'Entidad financiera'),
                  controller: entidadFinanciera,
                  validator: ValidationBuilder().required().build(),
                ),
                SizedBox(height: size.height * 0.02),
                CustomInput(
                  placeholder: '',
                  title: const CustomFontAileronRegular(text: 'Clave 4 digitos'),
                  texto: false,
                  ocultarTexto: true,
                  controller: _clave1Controller,
                  validator: ValidationBuilder().required().build(),
                ),
                SizedBox(height: size.height * 0.02),
                CustomInput(
                  placeholder: '',
                  title: const CustomFontAileronRegular(text: 'Confirmala'),
                  texto: false,
                  ocultarTexto: true,
                  controller: _clave2Controller,
                  validator: ValidationBuilder().required().build(),
                ),
                SizedBox(height: size.height * 0.02),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [TermsCheck()],
                      ),
                      Column(
                        children: [
                          RichText(
                              textAlign: TextAlign.justify,
                              text: const TextSpan(
                                  text: 'Al crear una cuenta aseguras haber\n',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                  children: [
                                    TextSpan(
                                        text:
                                            'leido y estar de acuerdo con los\n',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14)),
                                    TextSpan(
                                        text: 'Terminos y condiciones ',
                                        style: TextStyle(
                                            color: Color(0xff00DFEE),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14)),
                                    TextSpan(
                                        text: 'y con la',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14)),
                                    TextSpan(
                                        text: ' Politica\n',
                                        style: TextStyle(
                                            color: Color(0xff00DFEE),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14)),
                                    TextSpan(
                                        text: 'de privacidad',
                                        style: TextStyle(
                                            color: Color(0xff00DFEE),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14)),
                                  ]))
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.02),
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
                      if (_clave1Controller.text != _clave2Controller.text) {
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
                      try {
                        var channel = getChannel();

                        var response = await ServiceClient(channel)
                            .referenteRegister(referenteRegisterRequest()
                              ..msisdn = msisdn
                              ..apellidos = _lastNameController.text
                              ..nombres = _firstNameController.text
                              ..mail = _emailController.text
                              ..fechaNacimiento = _fechaNacController.text
                              ..ciudad = _ciudadController.text
                              ..mediosPagos = idMediopago.toString()
                              ..entidadFinanciera = entidadFinanciera.text
                              ..tipoCuenta = '1'
                              ..clave = _clave1Controller.text
                              ..sessionString = sessionString
                              ..date = DateFormat('yyyy-MM-dd').format(DateTime.now())
                              ..identificacion = identificacion.text
                              );
                        channel.shutdown;

                        await SessionManager()
                            .set("sessionString", sessionString);

                        Fluttertoast.showToast(
                            msg: response.message,
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.green,
                            textColor: Colors.white,
                            fontSize: 16.0);
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const BottomNavigationCustom(), 
                                  ),
                          (Route<dynamic> route) => false
                        );
                      } on GrpcError catch (e) {
                        Fluttertoast.showToast(
                            msg: e.message ?? 'Hubo un error',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      } on Exception catch (e) {
                        Fluttertoast.showToast(
                            msg: e.toString(),
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      }
                    },
                    title: 'Crear cuenta'),
                SizedBox(height: size.height * 0.02),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
