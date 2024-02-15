import 'package:flutter/material.dart';

class SimuladorScreen extends StatefulWidget {
  const SimuladorScreen({super.key});

  @override
  State<SimuladorScreen> createState() => _SimuladorScreenState();
}

class _SimuladorScreenState extends State<SimuladorScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient:LinearGradient(colors: [Color(0xff003366), Color(0xff02B5E7)])),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Calculemos tus recompensas', style: TextStyle(color: Colors.white, fontSize: 16)),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}