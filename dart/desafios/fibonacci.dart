void main(List<String> args) {
  print(fibonacci(15));
}

List<int> fibonacci(int reps) {
  if (reps == 0) return [];
  if (reps == 1) return [0];
  if (reps == 2) return [0, 1];
  List<int> retorno = [0, 1];
  int fator = 1;
  for (int i = 3; i <= reps; i++) {
    fator = retorno[retorno.length - 2] + retorno[retorno.length - 1];
    retorno.add(fator);
  }
  return retorno;
}
