import 'dart:io';

void main() {
  stdout.write('Entrez un mot de passe (min 6 caractères) : ');
  final mp = stdin.readLineSync();

  try {
    verifierMotdepasse(mp);
    print('Mot de passe accepté ✅');
  } catch (e) {
    print('Erreur : $e');
  }
}

void verifierMotdepasse(String? mp) {
  if (mp == null || mp.length < 6) {
    throw Exception('Mot de passe trop court (minimum 6).');
  }
}