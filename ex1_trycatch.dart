void main() {
  try {
    var a = 12;
    var b = 0;
    var c = a ~/ b; // l’opérateur ~/ fait une division entière -> Exception
    print('Résultat : $c');
  } on IntegerDivisionByZeroException {
    print('Division impossible');
  }
}