
class Referente {
  int idreferente;
  String codigoReferente;
  String msisdn;
  String apellidos;
  String nombres;
  String mail;
  DateTime? fechaNacimiento;
  String ciudad;
  int? idMediosPagos;
  String entidadFinanciera;
  String clave;
  String idTipoCuentaReferente;
  String sessionString;
  DateTime fechaCreacion;
  DateTime fechaModificacion;
  DateTime fechaAcceso;
  int puntos;
  String? msisdnRecomendado;
  String identificacion;
  int puntosEnProceso;
  String puntosFechaVencimiento;

  Referente(
      {
         required this.idreferente,
         required this.codigoReferente,
         required this.msisdn,
         required this.apellidos,
         required this.nombres,
         required this.mail,
         this.fechaNacimiento,
         required this.ciudad,
         this.idMediosPagos,
         required this.entidadFinanciera,
         required this.clave,
         required this.idTipoCuentaReferente,
         required this.sessionString,
         required this.fechaCreacion,
         required this.fechaModificacion,
         required this.fechaAcceso,
         this.puntos = 0,
         this.msisdnRecomendado,
         required this.identificacion,
         this.puntosEnProceso = 0,
         required this.puntosFechaVencimiento
      });

  // factory Referente.fromJson(Map<String, dynamic> json) {
  //   return Referente(
  //       idreferente: int.tryParse(json['idreferente'].toString())??0,
  //       codigoReferente: json['codigoReferente']??'',
  //       msisdn: json['msisdn'] ?? '',
  //       apellidos: json['apellidos'] ?? '',
  //       nombres: json['nombres'].toString(),
  //       fechaNacimiento: DateTime.tryParse(json['fechaNacimiento'].toString())??DateTime.now(),
  //       ciudad: json['ciudad'].toString(),
  //       idMediosPagos: int.tryParse(json['idMediosPagos'].toString())??1,
  //       entidadFinanciera: json['entidadFinanciera'].toString(),
  //       clave: json['clave'].toString(),
  //       idTipoCuentaReferente: json['idTipoCuentaReferente']??'',
  //       sessionString: json['sessionString']??'',
  //       fechaCreacion: DateTime.tryParse(json['fechaCreacion'].toString())??DateTime.now(),
  //       fechaModificacion: DateTime.tryParse(json['fechaModificacion'].toString())??DateTime.now(),
  //       fechaAcceso: DateTime.tryParse(json['fechaAcceso'].toString())??DateTime.now(), 
  //       mail: json['mail']??'',
  //       msisdnRecomendado: json['msisdnRecomendado']??'',
  //       identificacion: json['identificacion']??'',
  //       );
  // }

  // Map<String, String> toJson() {
  //   return {
  //     'idreferente': idreferente.toString(),
  //     'codigoReferente': codigoReferente,
  //     'msisdn': msisdn,
  //     'apellidos': apellidos,
  //     'nombres': nombres,
  //     'mail': mail,
  //     'fechaNacimiento': fechaNacimiento==null?'':DateFormat('yyyy-MM-dd').format(fechaNacimiento!),
  //     'ciudad': ciudad,
  //     'idMediosPagos': idMediosPagos.toString(),
  //     'entidadFinanciera': entidadFinanciera,
  //     'clave': clave,
  //     'idTipoCuentaReferente': idTipoCuentaReferente,
  //     'sessionString': sessionString,
  //     'fechaCreacion': DateFormat('yyyy-MM-dd').format(fechaCreacion),
  //     'fechaModificacion': DateFormat('yyyy-MM-dd').format(fechaModificacion),
  //     'fechaAcceso': DateFormat('yyyy-MM-dd').format(fechaAcceso),
  //     'msisdnRecomendado': msisdnRecomendado??'',
  //     'identificacion': identificacion.toString(),
  //   };
  // }
}
