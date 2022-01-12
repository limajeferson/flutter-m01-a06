void main() {
  //* Invocações
  // studentAverage('Lima', 29, [8, 9, 7, 5, 2, 6, 8]);
  // studentAverage(null, 29, [8, 9, 7, 5, 2, 6, 8]);

  // studentAverage(name: 'Jeferson', grades: [8, 5, 7, 9], age: 29);
  // studentAverage(age: 29, grades: [8, 5, 7, 9] );

  // studentAverage('Jeferson', 29, [8, 9, 7, 5, 2, 6, 8]);
  // studentAverage(29, [8, 9, 7, 5, 2, 6, 8], 'Jeferson');

  //? Variável como parâmentro
  final myAge = 20;
  final grades = [8, 5, 7, 9];
  studentAverage('Jeferson', myAge, grades);
  print(myAge);
  print(grades);
}

//* Função com parâmetros Obrigatórios
void studentAverage(String name, int age, List<int> grades) {
// void sdtudentAverage(String? name, int age, List<int> grades) {
  // age = 28;
  grades.add(10);
  final avg = grades.reduce((v, e) => v + e) / grades.length;
  print('O aluno $name de $age anos teve média $avg');
}

//* Função com parâmetros Nomeados - required, null, x valor padrão
// void studentAverage({
//   String name = 'não identificado',
//   required int age,
//   required List<int> grades,
// }) {
//   final avg = grades.reduce((v, e) => v + e) / grades.length;
//   print('O aluno $name de $age anos teve média $avg');
// }

//* Função com parâmetros Opcioniais
// void studentAverage([
//   String name = 'não identificado',
//   int? age,
//   List<int>? grades,
// ]) {
//   // final avg = grades.reduce((v, e) => v + e) / grades.length;
//   print('O aluno $name de $age anos teve média');
// }

//* Função com diferentes parâmetros (misto)
// void studentAverage(
//   int age,
//   List<int> grades, [
//   String name = 'não identificado',
//   ]) {
//   final avg = grades.reduce((v, e) => v + e) / grades.length;
//   print('O aluno $name de $age anos teve média $avg');
// }
