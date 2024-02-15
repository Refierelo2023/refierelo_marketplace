import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:refierelo_marketplace/data/screens/Login/otp/code_screen.dart';
import 'package:refierelo_marketplace/data/screens/Register/components/components.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(height: size.height * 0.04),
              const Text('Escribe tu número de celular',
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
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        controller: _controllerMsisdn,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: 'xxxxxxxxxx',
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

                    try {
                      var channel = getChannel();
                      var response = await ServiceClient(channel).otp(otpRequest(msisdn: _controllerMsisdn.text, login: true));
                      channel.shutdown();
                      // return (response.message);

                      if (response.message == '0') {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CodeScreen(
                                      msisdn: _controllerMsisdn.text,
                                    )));
                      } else {
                        Fluttertoast.showToast(
                            msg:
                                "Ocurrio un error al tratar de enviar el mensaje de verificación",
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
                    } on Exception catch (_) {
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
                  title: 'Siguiente')
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
            text: 'Te enviaremos un mensaje sms\n',
            style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.w400),
            children: [
              TextSpan(
                  text: 'con un código de seguridad para\n',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w400)),
              TextSpan(
                  text: 'que puedas crear una nueva clave',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w400))
            ]),
      ),
    );
  }
}
