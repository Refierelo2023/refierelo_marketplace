import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:refierelo_marketplace/data/screens/Dialogs/dialog_register.dart';
import 'package:refierelo_marketplace/data/screens/Register/register_form.dart';
import 'package:refierelo_marketplace/data/screens/main_screen.dart';
import 'package:refierelo_marketplace/data/screens/otp/insert_number_screen.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class OptionsRegisterScreen extends StatefulWidget {
  const OptionsRegisterScreen({Key? key}) : super(key: key);

  @override
  State<OptionsRegisterScreen> createState() => _OptionsRegisterScreenState();
}

class _OptionsRegisterScreenState extends State<OptionsRegisterScreen> {
  late User _user; 

  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: [
    'email',
    'https://www.googleapis.com/auth/calendar',
    'https://www.googleapis.com/auth/drive',
    'https://www.googleapis.com/auth/gmail.readonly',
    'https://www.googleapis.com/auth/youtube',
    'https://www.googleapis.com/auth/photoslibrary',
    'https://www.googleapis.com/auth/contacts.readonly',
    'https://www.googleapis.com/auth/tasks',
  ]);

   void handleDataSubmit(Map<String, String> formData) {
    // Maneja los datos enviados desde DialogRegister aquí
    print('Datos recibidos: $formData');
    // Aquí puedes hacer algo con los datos, como guardarlos en Firebase
  }

  Future<void> login() async {
    try {
      if (kIsWeb) {
        // Lógica de inicio de sesión web 
      } else {
        final user = await signInWithGoogle();
        if (user != null) {
          setState(() {
            _user = user;
          });
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => DialogRegister(
                user: _user,
                pressContinue: () {
                  Navigator.pop(context);
                },               
              ),
            ),
            (Route<dynamic> route) => false,
          );
        }
      }
    } catch (e) {
      print('Error en login: $e');
    }
  }

  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        final userCredential =
            await FirebaseAuth.instance.signInWithCredential(credential);
        return userCredential.user;
      }
    } catch (e) {
      print('Error en signInWithGoogle: $e');
    }
    return null;
  }

  void iniciarSesionFacebook(BuildContext context) async {
    try {
      final LoginResult result = await FacebookAuth.instance
          .login(permissions: ['public_profile', 'email']);
      if (result.status == LoginStatus.success) {
        final AccessToken accessToken = result.accessToken!;
        print('Token de acceso de Facebook: ${accessToken.token}');
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const MainScreen()),
          (Route<dynamic> route) => false,
        );
      } else {
        print('La autenticación con Facebook falló');
      }
    } catch (error) {
      print('Error durante el inicio de sesión con Facebook: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/option_register/background1.png'),
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
                  builder: (BuildContext context) => const InsertNumberScreen(),
                ),
              );
            },
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: size.height * 0.34),
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "¡ Estas cerca de ganar miles\n",
                      style: const CustomFontAileronSemiBoldWhite(
                        text: " ",
                        fontSize: 0.042,
                      ).getTextStyle(context),
                      children: [
                        TextSpan(
                          text: "de recompensas !",
                          style: const CustomFontAileronSemiBoldWhite(
                            text: "",
                            fontSize: 0.042,
                          ).getTextStyle(context).copyWith(height: 1.5),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.2),
                const Center(
                  child: CustomFontAileronRegularWhite(
                    text: '¿ Cómo deseas continuar ?',
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                btnForm(size, context),
                SizedBox(height: size.height * 0.01),
                btnFacebook(size),
                SizedBox(height: size.height * 0.01),
                btnGoogle(size),
                SizedBox(height: size.height * 0.01),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container btnForm(Size size, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.1),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xff00DFEE), Color(0xff0096C2)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        style: TextButton.styleFrom(foregroundColor: Colors.white),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RegisterForm(              
                msisdn: "msisdn",                
              ),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Image.asset(
                  'assets/images/option_login_screens/formulario.png',
                  height: size.height * 0.04,
                ),
              ),
            ),
            const Expanded(
              flex: 7,
              child: Padding(
                padding: EdgeInsets.only(left: 2),
                child: CustomFontAileronRegularWhite(
                  text: 'Continuar con tus datos',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container btnFacebook(Size size) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.1),
      decoration: BoxDecoration(
        color: const Color(0xff336699),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        style: TextButton.styleFrom(foregroundColor: Colors.white),
        onPressed: () {
          iniciarSesionFacebook(context);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Image.asset(
                  'assets/images/option_login_screens/facebook_blanco.png',
                  height: size.height * 0.05,
                  fit: BoxFit.fitHeight,
                ),
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
        ),
      ),
    );
  }

  Container btnGoogle(Size size) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.1),
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        style: TextButton.styleFrom(foregroundColor: Colors.white),
        onPressed: () async {
          try {
            final user = await signInWithGoogle();
            if (user != null) {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => DialogRegister(
                    user: user,
                    pressContinue: () {
                      Navigator.pop(context);
                    },                  
                  ),
                ),
                (Route<dynamic> route) => false,
              );
            }
          } catch (error) {
            print('Error durante el inicio de sesión con Google: $error');
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Image.asset(
                  'assets/images/option_login_screens/google.png',
                  height: size.height * 0.04,
                  fit: BoxFit.fitHeight,
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
        ),
      ),
    );
  }
}
