/*
  As maçãs custam R$ 0,30 cada se forem compradas menos do que uma dúzia, e R$ 0,25 
  se forem compradas pelo menos doze. Escreva um programa que leia o número de 
  maçãs compradas, calcule e escreva o valor total da compra.
*/

import 'dart:io';

void main(List<String> args) {
  valorFinal();
}

double valorFinal() {
  stdout.writeln('Insira a quantidade de maçãs compradas:');
  int quantidade = int.parse(stdin.readLineSync()!);
  if (quantidade < 12) {
    double valorFinal = quantidade * 0.3;
    print('O valor total da compra foi de: $valorFinal');
    return valorFinal;
  } else {
    double valorFinal = quantidade * 0.25;
    print('O valor total da compra foi de: $valorFinal');
    return valorFinal;
  }
}
