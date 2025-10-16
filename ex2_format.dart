import 'dart:io';
void main() {
  stdout.write('Entrez un nombre entier : ');
  final line = stdin.readLineSync();

  try {
    final n = int.parse(line ?? ''); // lève FormatException si invalide
    print('Vous avez saisi le nombre valide : $n');
  } on FormatException {
    print("Le format n'est pas valide (ex. 123).");
  } finally {
    print('Fin d\'opération');
  }
}
