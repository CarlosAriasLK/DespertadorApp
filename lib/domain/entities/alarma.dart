

class Alarma {

  final String? id;
  final DateTime tiempo;
  final List<String> repetir;
  final String etiqueta;
  final String sonido;
  final bool posponer;
  final bool activa;

  Alarma({
    this.id,
    required this.tiempo,
    required this.repetir,
    required this.etiqueta,
    required this.sonido,
    required this.posponer,
    required this.activa
  });


}