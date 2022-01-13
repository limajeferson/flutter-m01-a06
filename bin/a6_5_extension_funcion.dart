import 'dart:io';

//*

//*
void main() {
  // final inputs = readFromKeyboard(stdin.readLineSync() ?? '');
  // final number1 = double.parse(inputs[0]);
  // final operator = inputs[1];
  // final number2 = double.parse(inputs[2]);
  // final result = calculate(number1, operator, number2);
  // final msg = formatMessage(result);
  // print(msg);
}

List<String> readFromKeyboard(String line) {
  if (line.isEmpty) exit(0);
  return line.split(' ');
}

double calculate(double number1, String operator, double number2) {
  switch (operator) {
    case '-':
      return number1 - number2;
    case '*':
      return number1 * number2;
    case '/':
      return number1 / number2;
    default:
      return number1 + number2;
  }
}

String formatMessage(double result) {
  final resultAprox = result.toStringAsFixed(5);
  final resultInteiro = result ~/ 1;
  final resultResto = result % 1;

  return resultResto > 0
      ? double.parse(resultAprox).toString()
      : resultInteiro.toString();
}
