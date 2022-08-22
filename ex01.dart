/*
  Escreva um programa para ler 2 valores (considere que não serão informados valores 
  iguais) e escrever o maior deles.
*/

void main(List<String> args) {
  maiorValor(num1: 2, num2: 1.5);
}

double maiorValor({
  required double num1,
  required double num2,
}) {
  if (num1 > num2) {
    print(num1);
    return num1;
  } else {
    print(num2);
    return num2;
  }
}
