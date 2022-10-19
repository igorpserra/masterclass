void main(List<String> args) {
  regraDeTres(fator1: 50, fator2: 100, fator4: 5);
}

void regraDeTres(
    {double fator1 = 0,
    double fator2 = 0,
    double fator3 = 0,
    double fator4 = 0}) {
  double part1 = (fator1 * fator4) / (fator2 + fator3);
  double part2 = (fator2 * fator3) / (fator1 + fator4);

  print('x = ${part1 + part2}');
}
