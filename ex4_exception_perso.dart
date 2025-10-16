import 'dart:io';

void main() {
  stdout.write('Entrez un mot de passe (min 6 caractères) : ');
  final mp = stdin.readLineSync();

  try {
    verifierMotdepasse(mp);
    print('Mot de passe accepté ✅');
  } on MotdepasseCourtException catch (e) {
    print('Mot de passe invalide : ${e.message}');
  }
}

// Exception personnalisée
class MotdepasseCourtException implements Exception {
  final String message;
  MotdepasseCourtException(this.message);
  @override
  String toString() => 'MotdepasseCourtException: $message';
}

// version modifiée qui lève l’exception personnalisée
void verifierMotdepasse(String? mp) {
  if (mp == null || mp.length < 6) {
    throw MotdepasseCourtException(
        'Le mot de passe doit contenir au moins 6 caractères.');
  }
}