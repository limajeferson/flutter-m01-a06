void main() {
  //* Estrutura - forEach
  // final numbers = [1, 5, 6];
  // numbers.forEach(action);
  // numbers.forEach(myAnonimousFunction);

  //* Convenção: parâmetros não utilizados
  // print(numbers.reduce((value, _) => value + 1));

  buildEmployeeLine((name, job, city, salary) {
    print('$name $job $city $salary');
  });
}

//* Função com nome
// [tipo] functionName(tipo param1, tipo param2, ...) {}
// void action(int element) {
//   print(element);
// }

//* Função sem nome - anônima ou lambda
// ([tipo] param1, [tipo] para2, ...) {}
// final myAnonimousFunction = (int element) {
//   print(element);
// };

//* Exemplo - Lista de funcionários
void buildEmployeeLine(
  void Function(String name, String job, String city, String salary) builder,
) {
  final employees = [
    ['Jeferson', 'Desenvolvedor', 'Salvador', '4500'],
    ['Jorge', 'Gerente', 'Praia do Forte', '6000'],
    ['Luan', 'Caixa', 'Porto', '3500'],
  ];
  for (final employee in employees) {
    print('Divisor');
    builder(employee[0], employee[1], employee[2], employee[3]);
  }
}
