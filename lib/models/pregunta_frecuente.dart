class PreguntaFrecuente {
  String contenido;
  String titulo;
  bool isExpanded;

  PreguntaFrecuente({
    required this.contenido,
    required this.titulo,
    this.isExpanded = false,
  });
}