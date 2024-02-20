import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:refierelo_marketplace/data/screens/Register/components/components.dart';
import 'package:refierelo_marketplace/data/screens/Register/register_screen.dart';
import 'package:refierelo_marketplace/data/screens/otp/code_screen.dart';
import 'package:refierelo_marketplace/data/screens/otp/components/btn_next.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';

class InsertNumberScreen extends StatefulWidget {
  const InsertNumberScreen({super.key});

  @override
  State<InsertNumberScreen> createState() => _InsertNumberScreenState();
}

class _InsertNumberScreenState extends State<InsertNumberScreen> {
  final TextEditingController _controllerMsisdn = TextEditingController();

  // Future<String> sendOTP(msisdn) async {

  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F6F9),
        // toolbarHeight: 30,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => RegisterScreen(),
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
              SizedBox(height: size.height * 0.04),
              const Text('Ingresa tu número de celular',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontSize: 15)),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.06,
                    vertical: size.height * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: size.height * 0.04,
                      width: size.width * 0.3,
                      decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                width: 0.5, color: Color(0xffc0c0c0)),
                            bottom: BorderSide(
                                width: 0.5, color: Color(0xffc0c0c0))),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/images/otp/colombia.png',
                            width: size.width * 0.1,
                            height: size.height * 0.1,
                          ),
                          const Text(
                            '+57',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: size.width * 0.4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: TextField(
                        controller: _controllerMsisdn,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: 'x x x x x x x',
                          border: InputBorder.none,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.04),
              paragraphInformation(size),
              SizedBox(
                height: size.height * 0.04,
              ),
              BtnNext(
                press: () async {
                  if (_controllerMsisdn.text == '') {
                    Fluttertoast.showToast(
                        msg: 'Ingrese un número válido.',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                    return;
                  }
                  // Almacena el contexto antes de la operación asíncrona
                  BuildContext currentContext = context;
                  try {
                    var channel = getChannel();
                    var response = await ServiceClient(channel).otp(otpRequest(
                        msisdn: _controllerMsisdn.text, login: false));
                    channel.shutdown();

                    if (response.message == '0') {
                      // Usa un Future.microtask para ejecutar el código después de la operación asíncrona
                      Future.microtask(() {
                        // Usa el contexto almacenado después de la operación asíncrona
                        Navigator.push(
                          currentContext,
                          MaterialPageRoute(
                            builder: (context) => CodeScreen(
                              msisdn: _controllerMsisdn.text,
                            ),
                          ),
                        );
                      });
                    } else {
                      Fluttertoast.showToast(
                        msg:"Ocurrió un error al tratar de enviar el mensaje de verificación",
                        toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                    }
                  } on GrpcError catch (e) {
                    Fluttertoast.showToast(
                        msg: e.message.toString(),
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  } on Exception {
                    Fluttertoast.showToast(
                      msg: 'Ha ocurrido un error',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);
                  }
                },
                title: 'Siguiente',
              )
            ],
          ),
        ),
      ),
    );
  }

  Container paragraphInformation(Size size) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.06),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
            text: 'Te enviaremos un mensaje SMS\n',
            style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w400),
            children: [
              TextSpan(
                  text: 'al celular registrado, de esta manera\n',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.w400)),
              TextSpan(
                  text: 'podemos verificar tu cuenta. \n',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.w400)),
              TextSpan(
                  text: '\n',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.w400)),
            ]),
      ),
    );
  }
}
