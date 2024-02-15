import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_product_registration.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_screens_categories.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_screens_data.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/login_screens_nps.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_surprise_reward.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class LoginScreensSetupAccount extends StatelessWidget {
  const LoginScreensSetupAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => const LoginScreensCategories(),
            ));
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 0, top: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20.0),
            const Center(
              child: CustomFontAileronBold2(
                text: 'Configuremos tu cuenta',
              ),
            ),
            const Center(
              child: CustomFontAileronRegular(
                text: 'En 4 simples pasos',
              ),
            ),
            const SizedBox(height: 20.0),
            _buildTapContainer(
              context,
              'Datos básicos',
              'Registra tu nombre, ubicación y otros datos',
              'assets/images/images_login/compartir.png',
              const LoginScreensData(),
            ),
            const SizedBox(height: 5.0),
            _buildTapContainer(
              context,
              'Recompensas',
              'Compra tus puntos y descubre el regalo que tenemos para ti',
              'assets/images/images_login/recompensas2.png',
              const LoginSurpriseRewardScreen(),
            ),
            const SizedBox(height: 5.0),
            _buildTapContainer(
              context,
              'Tienda Virtual',
              'Registra tus productos para que tu comunidad los compre y recomiende',
              'assets/images/images_login/marcket.png',
              const LoginProductRegistration(),
            ),
            const SizedBox(height: 5.0),
            _buildTapContainer(
              context,
              'NPS',
              'Configura tu NPS y personaliza las preguntas',
              'assets/images/images_login/estrellanps.png',
              const LoginScreensNps(),
            ),
            const SizedBox(height: 10.0),
            const CustomFontAileronRegular(
              text: '1 paso de 4 completados',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTapContainer(BuildContext context, String title, String subtitle, String imagePath, Widget routeTo) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => routeTo,
        ));
      },
      child: _buildContainer(
        title,
        subtitle,
        imagePath,
      ),
    );
  }

  Widget _buildContainer(String title, String subtitle, String imagePath) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          Container(
            width: 65.0,
            height: 65.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.0),
              border: Border.all(color: const Color(0xFFC7D0D8)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 15.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomFontAileronBold(
                  text: title,
                ),
                const SizedBox(height: 4.0),
                CustomFontAileronRegular(
                  text: subtitle,
                ),
              ],
            ),
          ),
          const Icon(
            Icons.chevron_right,
            color: Color(0xFF003366),
          ),
        ],
      ),
    );
  }
}
