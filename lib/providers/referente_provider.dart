import 'package:flutter/foundation.dart';
import 'package:refierelo_marketplace/models/referente.dart';

class ReferenteProvider with ChangeNotifier, DiagnosticableTreeMixin {
  Referente? referenteGlobal;

  void set(Referente referente) {
    // _referenteGlobal = referente;
    referenteGlobal = referente;
    notifyListeners();
  }

  void actualizarPuntos(int puntos) {
    referenteGlobal?.puntos += puntos;
    notifyListeners();
  }
}
