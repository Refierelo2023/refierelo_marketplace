import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/Options/components/custom_appbar.dart';
import 'package:refierelo_marketplace/data/screens/otp/insert_number_screen.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'Registrarse'),
      body: Column(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InsertNumberScreen()),
                );
              },
              child: cardReferente(context)),
          GestureDetector(
              onTap: () async {
                final Uri url = Uri.parse('https://www.refierelo.com/');

                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('No puedo abrir el link'),
                  ));
                }
              },
              child: cardComercio(context))
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  Container cardComercio(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.03,
          horizontal: MediaQuery.of(context).size.width * 0.02),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Color(0xff003366), Color(0xff02B5E7)]),
          borderRadius: BorderRadius.circular(10)),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(
                image: AssetImage('assets/images/register/comercio.png'),
                width: 150,
                height: 180,
                fit: BoxFit.contain,
              ),
            ],
          ),
          Column(mainAxisSize: MainAxisSize.min, children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                width: 150,
                height: 40,
                child: CustomFontAileronRegular(
                  text: "Tengo un negocio"
                  ),                 
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                width: 150,
                height: 60,
                child: CustomFontAileronRegular(
                  text: 'Registrate, Impulsa tu negocio y promociona tus productos con todos nuestros referentes.',
                ),
              ),
            ),
          ])
        ],
      ),
    );
  }

  Container cardReferente(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.02,
          right: MediaQuery.of(context).size.width * 0.02,
          top: MediaQuery.of(context).size.height * 0.02),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Color(0xff003366), Color(0xff02B5E7)]),
          borderRadius: BorderRadius.circular(10)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
                alignment: Alignment.bottomCenter,
                image: AssetImage('assets/images/superheroe_mitad.png'),
                // image: AssetImage('assets/images/register/personaje.png'),
                width: 150,
                height: 180,
                fit: BoxFit.contain,
              ),
          
          Column(mainAxisSize: MainAxisSize.min, children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: SizedBox(
                width: 150,
                height: 40,
                child: CustomFontAileronRegular(
                  text: '¡ Quiero ser Referente Registrate !'
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: SizedBox(
                width: 150,
                height: 50,
                child: CustomFontAileronRegular(
                  text: 'Refiere familiares, amigos y conocidos y gana recompensas por ello.',
                ),
              ),
            ),
            
          ])
        ],
      ),
    );
  }
}
