
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:grpc/grpc.dart';
import 'package:intl/intl.dart';
import 'package:refierelo_marketplace/app/helper/helpers/helpers.dart';
import 'package:refierelo_marketplace/data/screens/Dialogs/dialog_register.dart';
import 'package:refierelo_marketplace/data/screens/Register/components/components.dart';
import 'package:refierelo_marketplace/data/screens/Register/register_form.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/bottom_navigation_custom.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/components.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:refierelo_marketplace/constants.dart';


class OptionsRegisterScreen extends StatefulWidget {
  final String msisdn;
  const OptionsRegisterScreen({Key? key, required this.msisdn})
      : super(key: key);

  @override
  State<OptionsRegisterScreen> createState() => _OptionsRegisterScreenState();
}

class _OptionsRegisterScreenState extends State<OptionsRegisterScreen> {
  String msisdn = '';
  @override
  void initState() {
    //ignore: todo
    // TODO: implement initState
    super.initState();
    msisdn = widget.msisdn;
  }

  final GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: ['email', 'https://www.googleapis.com/auth/userinfo.profile']);

  void iniciarSesionGoogle() async {
    var userData = await _googleSignIn.signIn();

    if (userData != null) {
      var sessionString = generateSessionString();

      var pass = '${keyRedes}g${userData.id.toString()}';

      var existente = await ServiceClient(getChannel()).getReferenteByEmail(
          getReferenteByEmailRequest(mail: userData.email.toString()));

      // if (existente.mail.isNotEmpty && existente.idTipoCuentaReferente != '3') {
      if (existente.mail.isNotEmpty) {
        Fluttertoast.showToast(
            msg: "Este correo ya existe en nuestros registros.",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
        return;
      }

      if (existente.mail.isEmpty) {
        try {
          await ServiceClient(getChannel())
              .referenteRegister(referenteRegisterRequest()
                ..msisdn = msisdn
                ..apellidos = ''
                ..nombres = userData.displayName.toString()
                ..mail = userData.email
                ..fechaNacimiento =
                    DateFormat('yyyy-MM-dd').format(DateTime.now())
                ..ciudad = ''
                ..mediosPagos = ''
                ..entidadFinanciera = ''
                ..tipoCuenta = '3'
                ..clave = pass
                ..sessionString = sessionString
                ..date = DateFormat('yyyy-MM-dd').format(DateTime.now()));
        } on GrpcError catch (e) {
          toast(e.message??'No se pudo iniciar sesión.', Colors.red);
          return;
        } on Exception {
          toast('No se pudo iniciar sesión.', Colors.red);
          return;
        } finally{
          Navigator.of(context).pop();
        }
      } else {
        sessionString = existente.sessionString;
        final prefs = await SharedPreferences.getInstance();
        await prefs.setBool('repeat', true);
      }
      await SessionManager().set("sessionString", sessionString);

      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (context) => const BottomNavigationCustom()),
              (Route<dynamic> route) => false);
    } else {
      Navigator.pop(context);
    }
  }

  void iniciarSesionFacebook() async {
    final LoginResult result = await FacebookAuth.instance
        .login(permissions: ['public_profile', 'email']);

    if (result.status == LoginStatus.success) {
      // you are logged
      // final AccessToken accessToken = result.accessToken!;
      var userData = await FacebookAuth.instance.getUserData();

      var pass = '${keyRedes}f${userData['id'].toString()}';

      var sessionString = generateSessionString();

      var existente = await ServiceClient(getChannel()).getReferenteByEmail(
          getReferenteByEmailRequest(mail: userData['email'].toString()));

      // if (existente.mail.isNotEmpty && existente.idTipoCuentaReferente != '2') {
      if (existente.mail.isNotEmpty) {
        Fluttertoast.showToast(
            msg: "Este correo ya existe en nuestros registros.",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
        return;
      }

      if (existente.mail.isEmpty) {
        try {
          await ServiceClient(getChannel())
              .referenteRegister(referenteRegisterRequest()
                ..msisdn = msisdn
                ..apellidos = ''
                ..nombres = userData['name'].toString()
                ..mail = userData['email'].toString()
                ..fechaNacimiento =
                    DateFormat('yyyy-MM-dd').format(DateTime.now())
                ..ciudad = ''
                ..mediosPagos = ''
                ..entidadFinanciera = ''
                ..tipoCuenta = '2'
                ..clave = pass
                ..sessionString = sessionString
                ..date = DateFormat('yyyy-MM-dd').format(DateTime.now()));
        } on GrpcError catch (e) {
          toast(e.message??'No se pudo iniciar sesión.', Colors.red);
          return;
        } on Exception {
          toast('No se pudo iniciar sesión.', Colors.red);
          return;
        } finally{
          Navigator.of(context).pop();
        }
      } else {
        sessionString = existente.sessionString;
        final prefs = await SharedPreferences.getInstance();
        await prefs.setBool('repeat', true);
      }
      await SessionManager().set("sessionString", sessionString);

      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const BottomNavigationCustom()),
        (Route<dynamic> route) => false
      );

      // print("referenteRegister response: " + response.message);
      // return (response.message);
    } else {
      print(result.status);
      print(result.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/register/background.png',
            ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: size.height * 0.45),
                Center(
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                          text: '¡ Estás cerca de ganar miles\n',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                          children: [
                            TextSpan(
                                text: 'de recompensas !',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400))
                          ])),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                const Center(
                  child: Text('¿ Cómo deseas continuar ?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400)),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                btnForm(size, context),
                SizedBox(
                  height: size.height * 0.02,
                ),
                btnFacebook(size),
                SizedBox(
                  height: size.height * 0.02,
                ),
                btnGoogle(size)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container btnForm(Size size, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.08),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            colors: [Color(0xff00DFEE), Color(0xff0096C2)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
          style: TextButton.styleFrom(foregroundColor: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => RegisterForm(msisdn: msisdn)),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/register/formulario.png',
                width: size.width * 0.04,
                height: size.height * 0.04,
              ),
              const Text(
                'Continuar con formulario',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          )),
    );
  }

  Container btnFacebook(Size size) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.08),
      decoration: BoxDecoration(
        color: const Color(0xff336699),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
          style: TextButton.styleFrom(foregroundColor: Colors.white),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return DialogRegister(pressContinue: iniciarSesionFacebook);
                });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Image.asset('assets/images/register/facebook.png',
              //     width: size.width * 0.04,
              //     height: size.height * 0.04,
              //     fit: BoxFit.fitHeight),
              Image.asset('assets/images/login/facebook_blanco.png',
                  // width: size.width * 0.04,
                  height: size.height * 0.03,
                  fit: BoxFit.fitHeight),
              const Text(
                'Continuar con Facebook',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          )),
    );
  }

  Container btnGoogle(Size size) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.08),
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
          style: TextButton.styleFrom(foregroundColor: Colors.white),
          onPressed: () async {
            showDialog(
                context: context,
                builder: (context) {
                  return DialogRegister(pressContinue: iniciarSesionGoogle);
                });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/register/google.png',
                width: size.width * 0.04,
                height: size.height * 0.04,
              ),
              const Text(
                'Continuar con Google',
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xffC0C0C0),
                    fontWeight: FontWeight.bold),
              )
            ],
          )),
    );
  }
}
