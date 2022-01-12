// void main() {
//* Invocações
// final result = sum();
// final result2 = 1 + result;
// }

//* Tipagem
// [tipo] functionName() {
//   Código
// }

// int sum() {
//   return 1 + 1;
// }

// sum() {
//   return 'String';
// }

//* return
// String concatente(String firstName, String secondName) {
//   final fullName = '$firstName $secondName';
//   return fullName;
// }

// void doSomething() {}

//* Calculadora
import 'dart:io';

void main() {
  // Nao deletar
  final inputs = readFromKeyboard(stdin.readLineSync() ?? '');

  // Variaveis iniciais
  final number1 = double.parse(inputs[0]);
  final operator = inputs[1];
  final number2 = double.parse(inputs[2]);

  // Escreva seu programa a partir daqui
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
  // if (resultResto != 0) {
  //   return double.parse(resultAprox).toString();
  // } else {
  //   return resultInteiro.toString();
  // }
}
