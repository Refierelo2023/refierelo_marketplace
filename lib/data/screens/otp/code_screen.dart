import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:refierelo_marketplace/data/screens/Register/components/components.dart';
import 'package:refierelo_marketplace/data/screens/Register/options_register_screen.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/components.dart';
import 'package:refierelo_marketplace/data/screens/otp/components/btn_next.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';

class CodeScreen extends StatefulWidget {
  final String msisdn;
  const CodeScreen({super.key, required this.msisdn});

  @override
  State<CodeScreen> createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
  String msisdn = '';
  final TextEditingController _controllerOtp = TextEditingController();
  @override
  void initState() {
    //ignore:todo
    // TODO: implement initState
    super.initState();
    msisdn = widget.msisdn;
  }

  Future<String> checkOTP(otp) async {
    var channel = getChannel();

    var response = await ServiceClient(channel).checkOtp(checkOtpRequest()
      ..msisdn = msisdn
      ..otp = otp);
    channel.shutdown();

    print(response.message);
    return (response.message);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
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
              const Text('Ingresa el código enviado a tu celular',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontSize: 15)),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1, vertical: size.height * 0.02),
                width: size.width * 0.3,
                child: TextField(
                  controller: _controllerOtp,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      hintText: 'XXXXXX',
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffc0c0c0))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffc0c0c0)))),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      text: 'Oprime en continuar para válidar el código\n',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                      children: [
                        TextSpan(
                            text: 'y completar el registro.',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                                fontWeight: FontWeight.w400))
                      ])),
              SizedBox(height: size.height * 0.05),
              BtnNext(
                  press: () async {
                    final response = await checkOTP(_controllerOtp.text);
                    if (response == '0') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                OptionsRegisterScreen(msisdn: msisdn)),
                      );
                    } else {
                      Fluttertoast.showToast(
                          msg: "Código ingresado incorrecto",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    }
                  },
                  title: 'Siguiente'),
              SizedBox(height: size.height * 0.05),

              TextButton(onPressed: ()async {
                try {
                      var channel = getChannel();
                      var response = await ServiceClient(channel).otp(otpRequest(msisdn: widget.msisdn, login: false));
                      channel.shutdown();

                      if (response.message == '0') {
                        toast('Código reenviado nuevamente.', Colors.green);
                      } else {
                        toast("Ocurrio un error al tratar de enviar el mensaje de verificación", Colors.red);
                      }
                    } on GrpcError catch (e) {
                                 toast(e.message.toString(), Colors.red);
                    } on Exception {
                            toast('Ha ocurrido un error', Colors.red);
                    }
              }, child: const Text(
                '¿No recibiste el código?',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
