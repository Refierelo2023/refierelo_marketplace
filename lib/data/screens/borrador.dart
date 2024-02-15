// import 'package:flutter/material.dart';

// class WidgetBottonReferir extends StatelessWidget {
//   const WidgetBottonReferir({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     double buttonWidth = MediaQuery.of(context).size.width * 0.25; // El 30% del ancho del dispositivo
//     double buttonPaddingHorizontalPercentage = 0.015;

//     return GestureDetector(
//       onTap: () {
//         // Lógica a ejecutar al presionar el botón
//         print('Botón Comprar presionado');
//       },
//       child: MouseRegion(
//         cursor: SystemMouseCursors.click,
//         child: FractionallySizedBox(
//           widthFactor: 0.9,
//           child: Container(
//             constraints: BoxConstraints(
//               maxWidth: MediaQuery.of(context).size.width,
//             ),
//             padding:  EdgeInsets.symmetric(
//               vertical: MediaQuery.of(context).size.width * buttonPaddingHorizontalPercentage,
//               horizontal: MediaQuery.of(context).size.width * buttonPaddingHorizontalPercentage,          
//             ),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               gradient: const LinearGradient(
//                 begin: Alignment.bottomCenter,
//                 end: Alignment.topCenter,
//                 colors: [
//                   Color(0xFF003366),
//                   Color(0xFF02b5e7),
//                 ],
//               ),
//             ),
//             child: SizedBox(
//               width: buttonWidth, // Ancho del botón
//               child: const Text(
//                 'Comenzar',
//                 style: TextStyle(
//                   fontFamily: 'Aileron',
//                   fontSize: 13,
//                   fontWeight: FontWeight.w400,
//                   color: Colors.white,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

// import 'package:flutter/material.dart';

// class LoginScreensData extends StatefulWidget {
//   @override
//   _LoginScreensDataState createState() => _LoginScreensDataState();
// }

// class _LoginScreensDataState extends State<LoginScreensData> {
//   Color borderColor3 = Colors.transparent;
//   Color borderColor4 = Colors.transparent;
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(''),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.symmetric(horizontal: 20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             // ... (código anterior)

//             const SizedBox(height: 20),

//             // Row para la imagen y el texto
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     Circulo imagen
            //     Stack(
            //       children: [
            //         Container(
            //           width: 100,
            //           height: 100,
            //           decoration: const BoxDecoration(
            //             shape: BoxShape.circle,
            //             image: DecorationImage(
            //               image: AssetImage(
            //                   'assets/images/images_login/perfil.png'),
            //               fit: BoxFit.cover,
            //             ),
            //           ),
            //         ),
            //         Positioned(
            //           bottom: 0,
            //           right: 0,
            //           child: GestureDetector(
            //             onTap: () {
            //               Acción para cargar imagen desde la galería
            //               (debes implementar la lógica para esto)
            //             },
            //             child: const Icon(Icons.camera_alt),
            //           ),
            //         ),
            //       ],
            //     ),

            //     const SizedBox(width: 20), // Espacio entre la imagen y el texto

            //     Texto "Agregar imagen de perfil"
            //     GestureDetector(
            //       onTap: () {
            //         Acción para abrir la galería
            //         (debes implementar la lógica para esto)
            //       },
            //       child: const Text(
            //         'Agregar imagen de perfil',
            //         style: TextStyle(
            //           color: Colors.blue, // Cambia el color según tu diseño
            //         ),
            //       ),
            //     ),
            //   ],
            // ),

//             const SizedBox(height: 20),

//             // TextField 1: Nombre Comercial
//             TextField(
//               decoration: InputDecoration(
//                 labelText: 'Nombre Comercial',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//               ),
//             ),

//             const SizedBox(height: 10),

//             // TextField 2: Dirección web
//             TextField(
//               decoration: InputDecoration(
//                 labelText: 'Dirección web',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//               ),
//             ),

//             // Continúa con los demás TextField siguiendo la misma lógica...
//             // ...
//           ],
//         ),
//       ),
//     );
//   }
// }


//TIPOGRAFIA
// import 'package:flutter/material.dart';

// class CustomFontAileronRegular extends StatelessWidget {
//   final String text;
//   final double fontSize;

//   const CustomFontAileronRegular({
//     Key? key,
//     required this.text,
//     this.fontSize = 0.035, // Porcentaje del tamaño de la pantalla (35% en este caso)
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double calculatedFontSize = screenWidth * fontSize;

//     return Text(
//       text,
//       style: TextStyle(
//         fontFamily: 'Aileron',
//         fontSize: calculatedFontSize,
//         fontWeight: FontWeight.w400,
//         color: const Color(0xFF003366),
//       ),
//     );
//   }
// }
// class CustomFontAileronRegular2 extends StatelessWidget {
//   final String text;
//   final double fontSize;

//   const CustomFontAileronRegular2({
//     Key? key,
//     required this.text,
//     this.fontSize = 0.029, // Porcentaje del tamaño de la pantalla (4% en este caso)
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double calculatedFontSize = screenWidth * fontSize;

//     return Text(
//       text,
//       style: TextStyle(
//         fontFamily: 'Aileron',
//         fontSize: calculatedFontSize,
//         fontWeight: FontWeight.w400,
//         color: const Color(0xFFA6A6A6),
//       ),
//     );
//   }
// }

// class CustomFontAileronSemiBold extends StatelessWidget {
//   final String text;
//   final double fontSize;

//   const CustomFontAileronSemiBold({
//     Key? key,
//     required this.text,
//     this.fontSize = 0.038,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double calculatedFontSize = screenWidth * fontSize;

//     return Text(
//       text,
//       style: TextStyle(
//         fontFamily: 'Aileron',
//         fontSize: calculatedFontSize,
//         fontWeight: FontWeight.w600,
//         color: const Color(0xFF003366),
//       ),
//     );
//   }
// }

// class CustomFontAileronBold extends StatelessWidget {
//   final String text;
//   final double fontSize;

//   const CustomFontAileronBold({
//     Key? key,
//     required this.text,
//     this.fontSize = 0.038, // 5% del tamaño de la pantalla
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double calculatedFontSize = screenWidth * fontSize;

//     return Text(
//       text,
//       style: TextStyle(
//         fontFamily: 'Aileron',
//         fontSize: calculatedFontSize,
//         fontWeight: FontWeight.w700,
//         color: const Color(0xFF003366),
//       ),
//     );
//   }
// }

// class CustomFontAileronBlack extends StatelessWidget {
//   final String text;
//   final double fontSize;

//   const CustomFontAileronBlack({
//     Key? key,
//     required this.text,
//     this.fontSize = 0.040,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double calculatedFontSize = screenWidth * fontSize;

//     return Text(
//       text,
//       style: TextStyle(
//         fontFamily: 'Aileron',
//         fontSize: calculatedFontSize,
//         fontWeight: FontWeight.w900,
//         color: const Color(0xFF003366),
//       ),
//     );
//   }
// }
// class CustomFontAileronBold2 extends StatelessWidget {
//   final String text;
//   final double fontSize;

//   const CustomFontAileronBold2({
//     Key? key,
//     required this.text,
//     this.fontSize = 0.048,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double calculatedFontSize = screenWidth * fontSize;

//     return Text(
//       text,
//       style: TextStyle(
//         fontFamily: 'Aileron',
//         fontSize: calculatedFontSize,
//         fontWeight: FontWeight.w600,
//         color: const Color(0xFF000000),
//       ),
//     );
//   }
// }

