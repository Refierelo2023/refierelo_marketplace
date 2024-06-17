import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:auth0_flutter/auth0_flutter_web.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:refierelo_marketplace/data/screens/Dialogs/dialog_register.dart';
import 'package:refierelo_marketplace/data/screens/Register/register_form.dart';
import 'package:refierelo_marketplace/data/screens/main_screen.dart';
import 'package:refierelo_marketplace/data/screens/otp/insert_number_screen.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class OptionsRegisterScreen extends StatefulWidget {
  final Auth0? auth0;

  const OptionsRegisterScreen({super.key, this.auth0});

  @override
  State<OptionsRegisterScreen> createState() => _OptionsRegisterScreenState();
}

class _OptionsRegisterScreenState extends State<OptionsRegisterScreen> {
  UserProfile? _user; // agregado nuevo

  late Auth0 auth0;
  late Auth0Web auth0Web; // agregado nuevo

  @override
  void initState() {
    super.initState();
    auth0 = widget.auth0 ??
        Auth0(dotenv.env['AUTH0_DOMAIN']!, dotenv.env['AUTH0_CLIENT_ID']!);
    auth0Web =
        Auth0Web(dotenv.env['AUTH0_DOMAIN']!, dotenv.env['AUTH0_CLIENT_ID']!);

    if (kIsWeb) {
      auth0Web.onLoad().then((final credentials) => setState(() {
            _user = credentials?.user;
          }));
    }
  }

  Future<void> login() async {
    try {
      if (kIsWeb) {
        return auth0Web.loginWithRedirect(redirectUrl: 'http://localhost:3000');
      } else {
        var credentials = await auth0
            .webAuthentication(scheme: dotenv.env['AUTH0_CUSTOM_SCHEME'])
            .login();

        setState(() {
          _user = credentials.user;
        });

        if (_user != null) {
          // Navegar a MainScreen si el usuario no es nulo
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) => DialogRegister(
                      pressContinue: () {
                        Navigator.pop(context);
                      },
                      user: _user!,
                    )),
            (Route<dynamic> route) => false,
          );
        }
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> logout() async {
    try {
      if (kIsWeb) {
        await auth0Web.logout(returnToUrl: 'http://localhost:3000');
      } else {
        await auth0
            .webAuthentication(scheme: dotenv.env['AUTH0_CUSTOM_SCHEME'])
            .logout();
        setState(() {
          _user = null;
        });
      }
    } catch (e) {
      print(e);
    }
  }

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

  // void iniciarSesionGoogle(BuildContext context) async {
  //   // print('Iniciando sesión con Google...');
  //   try {
  //     // Obtener las credenciales de Google
  //     final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
  //     if (googleUser != null) {
  //       final GoogleSignInAuthentication googleAuth =
  //           await googleUser.authentication;
  //       try {
  //         // Iniciar sesión en Auth0 solo si no estás en la web
  //         if (!kIsWeb) {
  //           var credentials = await auth0
  //               .webAuthentication(scheme: dotenv.env['AUTH0_CUSTOM_SCHEME'])
  //               .login();
  //           setState(() {
  //             _user = credentials.user;
  //           });
  //           // print('Usuario autenticado correctamente: $_user');
  //           // Navegar a MainScreen si el usuario no es nulo
  //           if (_user != null) {
  //             // print('El usuario no es nulo: $_user');
  //             Navigator.pushAndRemoveUntil(
  //               context,
  //               MaterialPageRoute(builder: (context) => const MainScreen()),
  //               (Route<dynamic> route) => false,
  //             );
  //           } else {
  //             // print('El usuario es nulo después de la autenticación');
  //           }
  //         } else {
  //           // Si estás en la web, puedes manejar la redirección según tus necesidades
  //         }
  //       } catch (e) {
  //         // print('Error durante la autenticación con Auth0: $e');
  //       }
  //     } else {
  //       // El usuario canceló el inicio de sesión con Google
  //       // print('Inicio de sesión cancelado');
  //     }
  //   } catch (error) {
  //     // Manejar cualquier error que pueda ocurrir durante el inicio de sesión con Google
  //     // print('Error durante el inicio de sesión con Google: $error');
  //   }
  // }

  void iniciarSesionFacebook(BuildContext context) async {
    try {
      // Iniciar sesión con Facebook y solicitar los permisos necesarios
      final LoginResult result = await FacebookAuth.instance
          .login(permissions: ['public_profile', 'email']);

      // Verificar si la autenticación fue exitosa
      if (result.status == LoginStatus.success) {
        // Si la autenticación con Facebook es exitosa, obtenemos los datos del usuario
        final AccessToken accessToken = result.accessToken!;

        // Aquí puedes utilizar accessToken para obtener más información del usuario si lo deseas
        print('Token de acceso de Facebook: ${accessToken.token}');

        // Navegar al siguiente pantalla, por ejemplo, MainScreen
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const MainScreen()),
          (Route<dynamic> route) => false,
        );
      } else {
        // Manejar el caso en el que la autenticación con Facebook falló
        print('La autenticación con Facebook falló');
      }
    } catch (error) {
      // Manejar cualquier error que pueda ocurrir durante el inicio de sesión con Facebook
      print('Error durante el inicio de sesión con Facebook: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/option_register/background1.png',
            ),
            fit: BoxFit.cover),
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
            end: Alignment.bottomCenter),
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
                    user: _user ?? const UserProfile(sub: ""))),
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
          )),
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
            // showDialog(
            //     context: context,
            //     builder: (context) {
            //       return DialogRegister(
            //         pressContinue: () => iniciarSesionFacebook(context),
            //       );
            //     });
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
          )),
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
            await login();
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
                    // width: size.width * 0.05,
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
          )),
    );
  }
}
