void main() {
  //? Exemplo - loop?
  // print('Primeira linha');
  // final result = 1 + 5;
  // print('Resultado: $result');
  // myFunction();

  // final list = [1, 2, 3];
  // print(list);

  // print('Primeira linha');
  // final result2 = 1 + 5;
  // print('Resultado: $result2');
  // myFunction();

  // print('Primeira linha');
  // final result3 = 1 + 5;
  // print('Resultado: $result3');
  // myFunction();

  //* Tipo Function - variável, () ou .call
  // final function = myFunction;
  // final function = myArrowFunction;
  // function();
  // function.call();

  //* Arrow - expressões
  myArrowFunction();

  //* First-class
  final list = [1, 2, 3];
  list.forEach(print);
  print;
}

//* Conceito
// [tipo] functionName() {
//   Código
// }
void myFunction() {
  // print('Primeira linha');
  myArrowFunction();
  final result3 = 1 * 5;
  print('Resultado: $result3');
}

void myArrowFunction() => print('Primeira linha');
