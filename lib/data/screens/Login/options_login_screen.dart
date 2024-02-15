import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:grpc/grpc.dart';
import 'package:refierelo_marketplace/app/helper/helpers/helpers.dart';
import 'package:refierelo_marketplace/data/screens/Dialogs/dialog_register.dart';
import 'package:refierelo_marketplace/data/screens/Login/logueo_form_screen.dart';
import 'package:refierelo_marketplace/data/screens/Register/components/components.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/bottom_navigation_custom.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/components.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:refierelo_marketplace/constants.dart';

class OptionsLoginScreen extends StatefulWidget {
  const OptionsLoginScreen({super.key});

  @override
  State<OptionsLoginScreen> createState() => _OptionsLoginScreenState();
}

class _OptionsLoginScreenState extends State<OptionsLoginScreen> {
  String msisdn = '';
  @override
  void initState() {
    //ignore:todo
    // TODO: implement initState
    super.initState();
  }
  final GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: ['email', 'https://www.googleapis.com/auth/userinfo.profile']);

  void iniciarSesionGoogle() async {
    var userData = await _googleSignIn.signIn();

    if (userData != null) {
      var sessionString = generateSessionString();
      var channel = getChannel();
      try {
        await ServiceClient(channel).referenteLogin(referenteLoginRequest(
            clave: '${keyRedes}g${userData.id.toString()}',
            idTipoCuentaReferente: '3',
            usuario: userData.email.toString(),
            sessionString: sessionString
            )
          );

        await SessionManager().set("sessionString", sessionString);
        final prefs = await SharedPreferences.getInstance();
        await prefs.setBool('repeat', true);

        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) => const BottomNavigationCustom()),
            (Route<dynamic> route) => false);
      } on GrpcError catch (e) {
        Navigator.of(context).pop();
        toast(e.message ?? 'No se pudo iniciar sesión.', Colors.red);
        return;
      } on Exception catch (_) {
        Navigator.of(context).pop();
        toast('No se pudo iniciar sesión.', Colors.red);
        return;
      } finally {
        channel.shutdown();
        // Navigator.of(context).pop();
      }
    } else {
      toast('Falló la autenticación con Google.', Colors.red);
      // Navigator.pop(context);
    }
  }

  void iniciarSesionFacebook() async {
    final LoginResult result = await FacebookAuth.instance
        .login(permissions: ['public_profile', 'email']);

    if (result.status == LoginStatus.success) {
      // you are logged
      // final AccessToken accessToken = result.accessToken!;
      var userData = await FacebookAuth.instance.getUserData();

      var sessionString = generateSessionString();
      var channel = getChannel();

      try {
        await ServiceClient(channel).referenteLogin(referenteLoginRequest(
            clave: '${keyRedes}f${userData['id'].toString()}',
            idTipoCuentaReferente: '2',
            usuario: userData['email'].toString(),
            sessionString: sessionString));

        await SessionManager().set("sessionString", sessionString);
        final prefs = await SharedPreferences.getInstance();
        await prefs.setBool('repeat', true);
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) => const BottomNavigationCustom()),
            (Route<dynamic> route) => false);
      } on GrpcError catch (e) {
        Navigator.of(context).pop();
        toast(e.message ?? 'No se pudo iniciar sesión.', Colors.red);
        return;
      } on Exception catch (_) {
        Navigator.of(context).pop();
        toast('No se pudo iniciar sesión.', Colors.red);
        return;
      } finally {
        channel.shutdown();
        // Navigator.of(context).pop();
      }
      // print("referenteRegister response: " + response.message);
      // return (response.message);
    }     
    else {
      toast('Falló la autenticación con Facebook.', Colors.red);
    }
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: size.height * 0.22),
                Image.asset(
                  'assets/images/superheroe_mitad.png',
                  width: size.width * 0.52,
                ),
                SizedBox(
                  width: size.width * 0.70,
                  child: const Text(
                    'Te estábamos extrañando',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                SizedBox(
                  width: size.width * 0.70,
                  child: const Text(
                    '¿Cómo deseas continuar?',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
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
              MaterialPageRoute(builder: (context) => const LogueoFormScreen()),
            );
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Image.asset(
              //   'assets/images/register/formulario.png',
              //   width: size.width * 0.04,
              //   height: size.height * 0.04,
              // ),
              Icon(Icons.lock),
              Text(
                'Continuar con usuario y clave',
                style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              fontWeight: FontWeight.bold),
            )
          ],
        )
      ),
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
              }
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
            ),
          ],
        )
      ),
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
              }
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/register/google.png',
                // width: size.width * 0.04,
                height: size.height * 0.025,
              ),
              const Text(
                'Continuar con Google',
                style: TextStyle(
                fontSize: 16,
              color: Color(0xffC0C0C0),
              fontWeight: FontWeight.bold),
            ),
          ],
        )
      ),
    );
  }
}
