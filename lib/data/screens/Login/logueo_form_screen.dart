import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:form_validator/form_validator.dart';
import 'package:grpc/grpc.dart';
import 'package:refierelo_marketplace/app/helper/helpers/helpers.dart';
import 'package:refierelo_marketplace/data/screens/Login/otp/insert_number_screen.dart';
import 'package:refierelo_marketplace/data/screens/Register/components/components.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/components.dart';
import 'package:refierelo_marketplace/data/screens/main_screen.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Register/components/custom_input.dart';

class LogueoFormScreen extends StatefulWidget {
  const LogueoFormScreen({super.key});

  @override
  State<LogueoFormScreen> createState() => _LogueoFormScreenState();
}

class _LogueoFormScreenState extends State<LogueoFormScreen> {
  var msisdn = TextEditingController();
  var prefijoPais = TextEditingController(text: '+57');
  var clave = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  void initState() {
    ValidationBuilder.setLocale('es');
    //ignore: todo
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/option_login_screens/fondo.png',
            ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
              child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: size.height * 0.22),
                Image.asset(
                  'assets/images/otp/superreferente.png',
                  width: size.width * 0.52,
                ),
                SizedBox(
                  width: size.width * 0.70,
                  child: const CustomFontAileronSemiBoldWhite(
                    text: "¡ Perfecto, ingresa tu número de celular y tu clave !",
                    fontSize: 0.045,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                SizedBox(
                  width: size.width * 0.70,
                  child: const CustomFontAileronRegularWhite(text: "",)
                ),
                SizedBox(height: size.height * 0.02),
                customInputTelefono(size),
                SizedBox(height: size.height * 0.02),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: CustomInput(
                      placeholder: 'Clave 4 dígitos',
                      controller: clave,
                      rounded: false,
                      colorTitle: Colors.white,
                      alignTitle: Alignment.center,                    
                      validator: ValidationBuilder().required().build(),
                      ocultarTexto: true),
                ),
                SizedBox(height: size.height * 0.02),
                Container(                  
                  height: size.height * 0.05,
                  width: size.width * 0.4,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Color(0xffCE8F21), 
                        Color(0xffF8E43E)
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ElevatedButton(
                    onPressed: () async {
                      if (!formKey.currentState!.validate()) {
                        return;
                      }
                      var sessionString = generateSessionString();
                      var channel = getChannel();
                      try {
                        onLoading(context, texto: 'Iniciando sesión');
                        await ServiceClient(channel).referenteLogin(
                            referenteLoginRequest(
                                clave: clave.text,
                                idTipoCuentaReferente: '1',
                                usuario: msisdn.text,
                                sessionString: sessionString));
                        await SessionManager()
                            .set("sessionString", sessionString);
                        final prefs = await SharedPreferences.getInstance();
                        await prefs.setBool('repeat', true);
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const MainScreen()), // se cambia por nuevo menu
                            (Route<dynamic> route) => false);
                      } on GrpcError catch (e) {
                        Navigator.of(context).pop();
                        toast(e.message ?? 'No se pudo iniciar sesión.',
                            Colors.red);
                        return;
                      } on Exception {
                        Navigator.of(context).pop();
                        toast('No se pudo iniciar sesión.', Colors.red);
                        return;
                      } finally {
                        channel.shutdown();
                        // Navigator.of(context).pop();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),                    ),
                    child: const CustomFontAileronRegularWhite(text: "Iniciar",
                    ),                    
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InsertNumberScreen()),
                      );
                    },
                    child: const Text(
                      'Olvidé mi clave',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color.fromARGB(255, 0, 42, 228)),
                  )
                )
              ],
            ),
          )),
        ),
      ),
    );
  }

  Widget customInputTelefono(Size size) {
    return Column(
      children: [        
        SizedBox(height: size.height * 0.001),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width * 0.15,
              // height: size.height * 0.08,
              margin: EdgeInsets.only(left: size.width * 0.1),
              child: TextFormField(
                controller: prefijoPais,
                textAlign: TextAlign.justify,
                keyboardType: TextInputType.number,
                validator: ValidationBuilder().required().build(),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                readOnly: true,
                decoration: const InputDecoration(
                    // hintText: '3167456868',
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(10),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFffffff), width: 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF02b5e7), width: 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),                       
                      ),
                  ),
                style: const TextStyle(fontSize: 14),
              ),
            ),
            Expanded(
                child: Container(
              // width: size.width * 0.75,
              // height: size.height * 0.08,
              margin: EdgeInsets.only(
                  right: size.width * 0.1, left: size.width * 0.01),
              child: TextFormField(
                controller: msisdn,
                textAlign: TextAlign.justify,
                keyboardType: TextInputType.number,
                validator: ValidationBuilder().required().build(),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp(r'^[ ]'))
                ],                
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Número de celular',
                    contentPadding: const EdgeInsets.all(10),
                    enabledBorder: const OutlineInputBorder(                      
                      borderSide: BorderSide(color: Color(0xFFffffff), width: 1),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF02b5e7), width: 1),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),                       
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    focusedErrorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)
                    ),                    
                  ),
                style: const TextStyle(fontSize: 14),
              ),
            ))
          ],
        )
      ],
    );
  }
}
