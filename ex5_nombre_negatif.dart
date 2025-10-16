import 'dart:io';

void main() {
  stdout.write('Entrez un nombre : ');
  final line = stdin.readLineSync();

  try {
    final n = int.parse(line ?? '');

    if (n < 0) {
      throw NombreNegatifException('Le nombre ne doit pas être négatif.');
    }

    final carre = n * n;
    print('Carré de $n = $carre');
  } on FormatException {
    print('Format invalide : entrez un entier (ex. 7).');
  } on NombreNegatifException catch (e) {
    print('Erreur : ${e.message}');
  } finally {
    print('Fin du flux (finally).');
  }
}

// Exception personnalisée
class NombreNegatifException implements Exception {
  final String message;
  NombreNegatifException(this.message);
  @override
  String toString() => 'NombreNegatifException: $message';
}