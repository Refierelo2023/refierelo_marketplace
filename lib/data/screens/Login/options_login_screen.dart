import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:grpc/grpc.dart';
import 'package:refierelo_marketplace/app/helper/helpers/helpers.dart';
import 'package:refierelo_marketplace/data/screens/Login/logueo_form_screen.dart';
import 'package:refierelo_marketplace/data/screens/Register/components/components.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/components.dart';
import 'package:refierelo_marketplace/data/screens/main_screen.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';


class OptionsLoginScreen extends StatefulWidget {
  const OptionsLoginScreen({super.key});

  @override
  State<OptionsLoginScreen> createState() => _OptionsLoginScreenState();
}

class _OptionsLoginScreenState extends State<OptionsLoginScreen> {
  String msisdn = '';
  @override
  void initState() {
    // ignore:todo
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
        // await ServiceClient(channel).referenteLogin(referenteLoginRequest(
        //     clave: '${keyRedes}g${userData.id.toString()}',
        //     idTipoCuentaReferente: '3',
        //     usuario: userData.email.toString(),
        //     sessionString: sessionString));

        await SessionManager().set("sessionString", sessionString);
        final prefs = await SharedPreferences.getInstance();
        await prefs.setBool('repeat', true);

        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    const MainScreen()), 
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
        Navigator.of(context).pop();
      }
    } else {
      toast('Falló la autenticación con Google.', Colors.red);
      Navigator.pop(context);
    }
  }

  void iniciarSesionFacebook() async {
    final LoginResult result = await FacebookAuth.instance
        .login(permissions: ['public_profile', 'email']);

    if (result.status == LoginStatus.success) {
      // you are logged
      // final AccessToken accessToken = result.accessToken!;
      // var userData = await FacebookAuth.instance.getUserData();

      // var sessionString = generateSessionString();
      // var channel = getChannel();

      // try {
      //   await ServiceClient(channel).referenteLogin(referenteLoginRequest(
      //       clave: '${keyRedes}f${userData['id'].toString()}',
      //       idTipoCuentaReferente: '2',
      //       usuario: userData['email'].toString(),
      //       sessionString: sessionString));

      //   await SessionManager().set("sessionString", sessionString);
      //   final prefs = await SharedPreferences.getInstance();
      //   await prefs.setBool('repeat', true);
      //   Navigator.pushAndRemoveUntil(
      //       context,
      //       MaterialPageRoute(builder: (context) => const MainScreen()),
      //       (Route<dynamic> route) => false);
      // } on GrpcError catch (e) {
      //   Navigator.of(context).pop();
      //   toast(e.message ?? 'No se pudo iniciar sesión.', Colors.red);
      //   return;
      // } on Exception catch (_) {
      //   Navigator.of(context).pop();
      //   toast('No se pudo iniciar sesión.', Colors.red);
      //   return;
      // } finally {
      //   channel.shutdown();
      //   Navigator.of(context).pop();
      // }
      // print("referenteRegister response: " + response.message);
      // return (response.message);
    } else {
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
          'assets/images/option_login_screens/fondo.png',
        ),
        fit: BoxFit.cover,
      ),
    ),
    child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 30,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: const Color(0xFFffffff),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => const MainScreen(),
              ),
            );
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.20),
            Image.asset(
              'assets/images/otp/superreferente.png',
              width: size.width * 0.52,
            ),
            SizedBox(
              width: size.width * 0.70,
              child: const CustomFontAileronSemiBoldWhite(
                text: '¡ Te estábamos extrañando !',
                fontSize: 0.045,
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(), // Added Spacer to push the next widgets to the bottom
            SizedBox(
              width: size.width * 0.90,
              child: const CustomFontAileronRegularWhite(
                text: '¿Cómo deseas continuar?',
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: size.height * 0.01),
            btnForm(size, context),
            SizedBox(height: size.height * 0.01),
            btnFacebook(size),
            SizedBox(height: size.height * 0.01),
            btnGoogle(size),
            SizedBox(height: size.height * 0.02),
          ],
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
                  builder: (context) => const LogueoFormScreen(                        
                      )),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Image.asset(
                    'assets/images/option_login_screens/formulario.png',
                    width: size.width * 0.04,
                    height: size.height * 0.044,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              const Expanded(
                flex: 7,
                child: Padding(
                  padding: EdgeInsets.only(left: 2),
                  child: CustomFontAileronRegularWhite(
                    text: 'Continuar con usuario y clave',
                  ),
                ),
              ),
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
          onPressed: iniciarSesionFacebook,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Image.asset(
                      'assets/images/option_login_screens/facebook_blanco.png',
                      height: size.height * 0.05,
                      fit: BoxFit.fitHeight),
                ),
              ),
              const Expanded(
                flex: 7,
                child: Padding(
                  padding: EdgeInsets.only(left: 2),
                  child: CustomFontAileronRegularWhite(
                    text: 'Continuar con Facebook',
                  ),
                ),
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
          onPressed: iniciarSesionGoogle,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child: Image.asset(
                    'assets/images/option_login_screens/google.png',
                    // width: size.width * 0.04,
                    height: size.height * 0.045,
                  ),
                ),
              ),
              const Expanded(
                flex: 7,
                child: Padding(
                  padding: EdgeInsets.only(left: 2),
                  child: CustomFontAileronRegular(
                    text: 'Continuar con Google',
                  ),
                ),
              ),
            ],
          )
        ),
    );
  }
}
