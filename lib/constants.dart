import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);
const kSectionTitleColor = Color.fromARGB(255, 10, 71, 139);
const kLightBlue = Color(0xff00DFEE);
// const kSectionTitleColor = Color(0xff003366);

// String host = '192.168.43.255';

// Cambiar esta variable según sea necesario durante el desarrollo
bool enableGRPC = true;

String host = enableGRPC ? '18.188.244.114' : 'localhost';
int getPort() => 7500;


// List<MedioPago> mediosPagos = [
//     MedioPago(id: '1', nombre: 'Daviplata'),
//     MedioPago(id: '2', nombre: 'Nequi'),
//     MedioPago(id: '3', nombre: 'Cta Ahorro'),
//     MedioPago(id: '4', nombre: 'Cta Corriente'),
//   ];

String keyRedes = "j8Y&>Db29hozPW\$%WkIAñ1d7";
