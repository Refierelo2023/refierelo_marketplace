import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/app/app_data/story_data.dart';
import 'package:refierelo_marketplace/constants.dart';
import 'package:refierelo_marketplace/data/screens/Register/register_form.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/body.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_screens_data.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/registration_costumer_nps.dart';
import 'package:refierelo_marketplace/data/screens/sugerencias/sugerencias_screen.dart';
import 'package:refierelo_marketplace/providers/referente_provider.dart';

void main() {
  initializeStories();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserNameProvider()),
        ChangeNotifierProvider(create: (_) => UserDataProvider()),
        ChangeNotifierProvider(create: (_) => UserDataProviderUser()),
        ChangeNotifierProvider(create: (_) => ReferenteProvider()),
        ChangeNotifierProvider(create: (_) => UserDataProviderSugerencias()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Refierelo',
          navigatorKey: navigatorKey,
          theme: ThemeData(
              primaryColor: kPrimaryColor,
              scaffoldBackgroundColor: Colors.white,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              fontFamily: "Aileron",
              primarySwatch: Colors.blue),
          home: Body()),
    );
  }
}
