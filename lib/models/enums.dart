enum TipoActividadSection { mensajeContactos, referidos, empresasReferidas, ofertas}


enum EstadoMensajeContacto {
  creado('Pendiente'),
  formalizado('Formalizado'),
  anulado('Anulado');
  final String value;
  const EstadoMensajeContacto(this.value);
}

enum EstadoReferenciaSubpr {
  sinIniciar('En proceso'),
  enTramite('En proceso'),
  dictamenBanco('En proceso'),
  cierre('Formalizado');
  final String value;
  const EstadoReferenciaSubpr(this.value);
}

enum EstadoReferenciaEmpr {
  validacion('Validación'),
  contacto('Contacto'),
  cierre('Cierre');
  final String value;
  const EstadoReferenciaEmpr(this.value);
}