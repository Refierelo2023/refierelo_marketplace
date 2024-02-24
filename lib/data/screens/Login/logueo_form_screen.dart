
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
              'assets/images/login/fondo_options_login.png',
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
                Image.asset('assets/images/superheroe_mitad.png', width: size.width*0.52,),
                SizedBox(width: size.width*0.70, child: const Text('¡ Perfecto ingresa tú Número', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20),),),
                SizedBox(
                  height: size.height * 0.02,
                ),
                SizedBox(width: size.width*0.70, child: const Text('de celular y tu clave !', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20),),),
                SizedBox(
                  height: size.height * 0.02,
                ),
                customInputTelefono(size),
                SizedBox(
                  height: size.height * 0.02,
                ),
                CustomInput(
                  placeholder: 'Clave 4 dígitos',                  
                  controller: clave, rounded: false, colorTitle: Colors.white, alignTitle: Alignment.center, validator: ValidationBuilder().required().build(), ocultarTexto: true),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
      // width: width,
      // height: height,
      height: size.height * 0.05,
            width: size.width * 0.4,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
                colors: [Color(0xffCE8F21), Color(0xffF8E43E)],
              ),
        borderRadius: BorderRadius.circular(20),
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
          await ServiceClient(channel).referenteLogin(referenteLoginRequest(clave: clave.text, idTipoCuentaReferente: '1', usuario: msisdn.text, sessionString: sessionString));

          await SessionManager().set("sessionString", sessionString);
          final prefs = await SharedPreferences.getInstance();
          await prefs.setBool('repeat', true);
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const MainScreen()),// se cambia por nuevo menu
        (Route<dynamic> route) => false
      );
        } on GrpcError catch (e) {
          Navigator.of(context).pop();
          toast(e.message??'No se pudo iniciar sesión.', Colors.red);
          return;
        } on Exception {
          Navigator.of(context).pop();
          toast('No se pudo iniciar sesión.', Colors.red);
          return;
        } finally{
          channel.shutdown();
          // Navigator.of(context).pop();
        }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        child: const Text('Iniciar'),
      ),
    ),
                TextButton(onPressed: (){
                  Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const InsertNumberScreen()),
            );
                }, child: const Text('Olvidé mi clave', style: TextStyle(
    decoration: TextDecoration.underline, color: Color.fromARGB(255, 0, 42, 228)
  ),))
              ],
            ),)
          ),
        ),
      ),
    );
  }


  Widget customInputTelefono(Size size){
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
          child: const Align(
              alignment: Alignment.center,
              child: Text('Número de celular', style: TextStyle(fontSize: 14, color: Colors.white), textAlign: TextAlign.center,)),
        ),
        SizedBox(
          height: size.height * 0.004,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


          Container(
          width: size.width * 0.15,
          // height: size.height * 0.08,
          margin: EdgeInsets.only(left: size.width * 0.04),
          child: TextFormField(
            controller: prefijoPais,
            textAlign: TextAlign.justify,
            keyboardType: TextInputType.text,
            validator: ValidationBuilder().required().build(),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            readOnly: true,
            decoration: const InputDecoration(
                // hintText: '3167456868',
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(10),
                border: InputBorder.none),
            style: const TextStyle(fontSize: 14),
          ),
          ),

          Expanded(child: Container(
          // width: size.width * 0.75,
          // height: size.height * 0.08,
          margin: EdgeInsets.only(right: size.width * 0.04, left: size.width * 0.01),
          child: TextFormField(
            controller: msisdn,
            textAlign: TextAlign.justify,
            keyboardType: TextInputType.text,
            validator: ValidationBuilder().required().build(),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            inputFormatters: [FilteringTextInputFormatter.deny(RegExp(r'^[ ]'))],
            // keyboardType:
            //     (widget.texto) ? TextInputType.text : TextInputType.number,
            decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: '3167456868',
                contentPadding: EdgeInsets.all(10),
                errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                border: InputBorder.none
                ),
            style: const TextStyle(fontSize: 14),
          ),
        ))
        ],)
      ],
    );
  }


}
