import '../Model/amigosModel.dart';

class AmigosController {
  AmigosModel? _amigos;

  void setNumeros(String n1, String n2) {
    try {
      int a = int.parse(n1);
      int b = int.parse(n2);
      _amigos = AmigosModel(a, b);
    } catch (e) {
      throw Exception('Ingrese valores numeericos validos');
    }
  }

  String verificarAmistad() {
    if (_amigos == null) return 'Primero ingrese los numeros';
    bool resultado = _amigos!.sonAmigos();
    if (resultado) {
      return 'Los numeros ${_amigos!.a} y ${_amigos!.b} son amigos.';
    } else {
      return 'Los numeros ${_amigos!.a} y ${_amigos!.b} no son amigos.';
    }
  }
}
