import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/app/app_data/story_data.dart';
import 'package:refierelo_marketplace/constants.dart';
import 'package:refierelo_marketplace/data/screens/Dialogs/dialog_register.dart';
import 'package:refierelo_marketplace/data/screens/Register/register_form.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/body.dart';
import 'package:refierelo_marketplace/data/screens/main_screen.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_product_registration.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_screens_data.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/registration_costumer_nps.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile_user/profile_screen_user.dart';
import 'package:refierelo_marketplace/data/screens/sugerencias/sugerencias_screen.dart';
import 'package:refierelo_marketplace/firebase_options.dart';
import 'package:refierelo_marketplace/providers/referente_provider.dart';
import 'package:firebase_core/firebase_core.dart';



void main() async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); 
  initializeStories();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserNameProvider()),// Ejemplo Nps nombre RegistrationCostumerNps
        ChangeNotifierProvider(create: (_) => UserDataProvider()),// Data formulario Empresas LoginScreensData 
        ChangeNotifierProvider(create: (_) => UserDataProviderUser()),// Data formulario Usuario RegisterForm
        ChangeNotifierProvider(create: (_) => ReferenteProvider()),
        ChangeNotifierProvider(create: (_) => UserDataProviderSugerencias()),// Data UserDataSugerencias 
        ChangeNotifierProvider(create: (_) => SelectedCategory()),// Perfil Usuario contenedores categorias
        ChangeNotifierProvider(create: (_) => ProductModel()),// modelo de datos Login_product_registration 
        ChangeNotifierProvider(create: (_) => UserDataGoogle()),// modelo de datos Login_product_registration 
        // ChangeNotifierProvider(create: (_) => RewardReferente()),// modelo de datos Login_product_registration/ login_points_calculate2 / Recompensa Referente
        // // ChangeNotifierProvider(create: (_) => PointsModel()),// modelo de datos LoginPointsCalculate precio de venta
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
          home: Body(),
          initialRoute: MainScreen.routename,
          // routes: {
          //   MainScreen.routename   :(context)=> MainScreen(),
          // },
          ),
    );
  }
}
