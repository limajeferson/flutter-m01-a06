import 'dart:io';

//* Estrutura - extension + on | this -> current instance
extension Calculadora on double {
  double plus(double other) => this + other;
  double minus(double other) => this - other;
  double times(double other) => this * other;
  double dividedBy(double other) => this / other;
  int integerPart() => this ~/ 1;
  double decimalPart() => this % 1;
}

//* Exemplo
void main() {
  // final name = 'Jeferson';
  // name.toUpperCase();

  final inputs = readFromKeyboard(stdin.readLineSync() ?? '');
  final number1 = double.parse(inputs[0]);
  final operator = inputs[1];
  final number2 = double.parse(inputs[2]);
  final result = calculate(number1, operator, number2);
  final msg = formatMessage(result);
  print(msg);
}

List<String> readFromKeyboard(String line) {
  if (line.isEmpty) exit(0);
  return line.split(' ');
}

double calculate(double number1, String operator, double number2) {
  switch (operator) {
    case '-':
      return number1.minus(number2);
    case '*':
      return number1.times(number2);
    case '/':
      return number1.dividedBy(number2);
    default:
      return number1.plus(number2);
  }
}

String formatMessage(double result) {
  final resultAprox = result.toStringAsFixed(5);
  final resultInteiro = result.integerPart();
  final resultResto = result.decimalPart();

  return resultResto > 0
      ? double.parse(resultAprox).toString()
      : resultInteiro.toString();
}
