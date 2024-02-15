import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/bottom_navigation_custom.dart';

// ignore: import_of_legacy_library_into_null_safe

import '../IntroductionScreens/introduction_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool theFirstTime = true;

  @override
  void initState() {
    isFirstTime();

    super.initState();

    Future.delayed(
        const Duration(seconds: 5),
        () => {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => (theFirstTime)
                          ? const IntroductionScreen()
                          : const BottomNavigationCustom()))
            });
  }

  Future isFirstTime() async {
    String? sessionString;
    if (await SessionManager().containsKey('sessionString')) {
      sessionString = await SessionManager().get("sessionString");
    }
    // String? sessionString = null;

    setState(() {
      (sessionString == null) ? theFirstTime = true : theFirstTime = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset('assets/images/splash.gif', fit: BoxFit.fill),
      ),
    );
  }
}
