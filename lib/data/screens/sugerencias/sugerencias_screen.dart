import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/home/homev.dart';
import 'package:refierelo_marketplace/data/screens/main_screen.dart';
import 'package:refierelo_marketplace/data/screens/sugerencias/input_sugerencia.dart';
import 'package:refierelo_marketplace/data/screens/sugerencias/sugerencias_dropdown.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:http/http.dart' as http;

class UserDataSugerencias {
  String nombreController;
  String mailController;
  String temaController;
  String comentarioController;

  UserDataSugerencias({
    required this.nombreController,
    required this.mailController,
    required this.temaController,
    required this.comentarioController,
  });
}

class UserDataProviderSugerencias extends ChangeNotifier {
  UserDataSugerencias userData = UserDataSugerencias(
    nombreController: "",
    mailController: "",
    temaController: "",
    comentarioController: "",
  );

  void updateUserData(UserDataSugerencias newData) {
    userData = newData;
    notifyListeners();
  }
}

class SugerenciasScreen extends StatefulWidget {
  const SugerenciasScreen({super.key});

  @override
  State<SugerenciasScreen> createState() => _SugerenciasScreenState();
}

class _SugerenciasScreenState extends State<SugerenciasScreen> {
  TextEditingController nombreController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController temaController = TextEditingController();
  TextEditingController comentarioController = TextEditingController();

   final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    
    final userData =
        Provider.of<UserDataProviderSugerencias>(context, listen: false).userData;
    nombreController.text = userData.nombreController;
    mailController.text = userData.mailController;
    temaController.text = userData.temaController;
    comentarioController.text = userData.comentarioController;
  }

  @override
  void dispose() {
    // liberar los recursos de los controladores cuando el widget se elimine
    nombreController.dispose();
    mailController.dispose();
    temaController.dispose();
    comentarioController.dispose();
    super.dispose();
  }

  Future<void> enviarWebhook() async {
    final url = Uri.parse("http://5.189.161.131:5000/webhook");
    final data = {
      'nombre': nombreController.text,
      'mail': mailController.text,
      'tema': temaController.text,
      'comentario': comentarioController.text,
      // ... otras propiedades del formulario
    };

    final respuesta = await http.post(url, body: data);
    if (respuesta.statusCode == 200) {
      // print('Webhook enviado con éxito');
    } else {
      // print('Error al enviar el webhook: ${respuesta.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ChangeNotifierProvider(
      create: (context) => UserDataProviderSugerencias(),
      child: Container(
          decoration: const BoxDecoration(
              gradient:
                  LinearGradient(colors: [Color(0xff003366), Color(0xff02B5E7)])),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: size.height * 0.01),
                        Center(
                          child: Image.asset(
                            'assets/images/sugerencias/bombillo.png',
                            height: size.height * 0.1,
                            width: size.width * 1,
                          ),
                        ),
                        SizedBox(height: size.height * 0.02),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              text: " Refiérelo lo construimos entre\n",
                              style: const CustomFontAileronSemiBoldWhite(text: "")
                                  .getTextStyle(context)
                                  .copyWith(height: 1.5),
                              children: [
                                TextSpan(
                                  text: 'todos, déjanos tu ',
                                  style:
                                      const CustomFontAileronSemiBoldWhite(text: "")
                                          .getTextStyle(context)
                                          .copyWith(height: 1.5),
                                ),
                                TextSpan(
                                  text: 'sugerencia',
                                  style: const CustomFontAileronSemiBoldTur(text: "")
                                      .getTextStyle(context)
                                      .copyWith(height: 1.5),
                                ),
                              ]),
                        ),
                        SizedBox(height: size.height * 0.02),
                        InputSugerencia(
                            campo: 'nombre',
                            frase: 'Déjanos tu ',
                            controller: nombreController),
                        SizedBox(height: size.height * 0.02),
                        InputSugerencia(
                          campo: 'mail',
                          frase: 'Déjanos tu ',
                          controller: mailController,
                        ),
                        SizedBox(height: size.height * 0.02),
                        SugerenciasDropdown(temaController: temaController,),
                        SizedBox(height: size.height * 0.02),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                      text: 'Déjanos tu ',
                                      style: const CustomFontAileronRegularWhite(
                                              text: "")
                                          .getTextStyle(context)
                                          .copyWith(height: 1.5),
                                      children: [
                                        TextSpan(
                                          text: 'comentario',
                                          style: const CustomFontAileronRegularTur(
                                                  text: "")
                                              .getTextStyle(context)
                                              .copyWith(height: 1.5),
                                        ),
                                      ]),
                                ),
                              ),
                              SizedBox(height: size.height * 0.001),
                              Container(
                                width: size.width * 0.9,
                                height: size.height * 0.15,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: const InputDecoration(
                                        border: InputBorder.none),
                                    controller: comentarioController,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Container(
                          width: size.width * 0.3,
                          height: size.height * 0.05,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                  colors: [Color(0xffCE8F21), Color(0xffF8E43E)])),
                          child: TextButton(
                              onPressed: () async {
                                if (!_formKey.currentState!.validate()) {
                                  return;
                                }
                                Provider.of<UserDataProviderSugerencias>(context, listen: false)
                                    .updateUserData(
                                  UserDataSugerencias(
                                    nombreController: nombreController.text,
                                    mailController: mailController.text,
                                    temaController: temaController.text,
                                    comentarioController: comentarioController.text,
                                  ),
                                );
                                // Imprimir valores antes de enviar el webhook
                                    // print('nombre: ${nombreController.text}');
                                    // print('mail: ${mailController.text}');
                                    // print('tema: ${temaController.text}');
                                    // print('comentario: ${comentarioController.text}');                              
                                    enviarWebhook();
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const MainScreen(),
                                      ),
                                    );
                                  },
                                child: const Text(
                                'Enviar',
                              style: TextStyle(color: Colors.white),
                            )
                          ),
                        ),
                        SizedBox(height: size.height * 0.01),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            appBar: AppBar(
              toolbarHeight: 35,
              backgroundColor: const Color(0xff003366),
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff003366), Color(0xff02B5E7)],
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_rounded),
                color: const Color(0xFFFFFFFF),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      // ignore: avoid_types_as_parameter_names
                      builder: (context) => Homev(setTab: (int ) {  },), // Ir a LoginScreens
                    ),
                  );
                },
              ),
            ),
          ),
        ),
    );
  }
}
