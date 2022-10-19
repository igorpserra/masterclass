void main(List<String> args) {
  //invalido
  validadorDeCartao('5419 8250 0346 1210');

  //valido
  validadorDeCartao('4916 6418 5936 9080');
}

void validadorDeCartao(String numCartao) {
  String numCartaoTrim = numCartao.replaceAll(' ', '');
  if (numCartaoTrim.length < 16) {
    print('Tamanho inválido');
    return;
  }

  int ultimoDigito = int.parse(numCartaoTrim[15]);

  int somaCartao = 0;

  for (int i = 0; i < numCartaoTrim.length - 1; i++) {
    int digito = int.parse(numCartaoTrim[i]);
    //coluna impar
    if (i.isOdd) {
      somaCartao += digito;
    } else {
      //coluna par
      //2 digitos
      if (digito * 2 > 9) {
        String dobro = (digito * 2).toString();
        int dig1 = int.parse(dobro[0]);
        int dig2 = int.parse(dobro[1]);
        somaCartao += (dig1 + dig2);
      } else {
        //1 digito
        somaCartao += (digito * 2);
      }
    }
  }
  int fator = ((somaCartao % 10));

  if (ultimoDigito == fator) {
    print('cartao válido');
  } else {
    print('cartao invalido');
  }
}
