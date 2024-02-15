enum TipoRecurso { imagen, video }

class Recurso {
  int idRecurso;
  int idComponente;
  int estado;
  String path;
  String configCodigo;
  TipoRecurso tipoRecurso;

  Recurso({
    required this.idRecurso,
    required this.idComponente,
    required this.estado,
    required this.path,
    required this.configCodigo,
    required this.tipoRecurso,
  });
}