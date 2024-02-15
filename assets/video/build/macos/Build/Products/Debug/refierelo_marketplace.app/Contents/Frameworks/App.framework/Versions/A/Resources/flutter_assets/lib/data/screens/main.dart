import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/main_screen.dart';


void main() {
  runApp(const MyApp());
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: "Aileron",
         primarySwatch:Colors.blue
      ),
      home: const MainScreen()
    );
  }
}
