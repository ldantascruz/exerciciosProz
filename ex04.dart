/*
  Faça um programa que leia três números, verifique (usando if e else) e mostre o maior e 
  o menor deles;
*/

import 'dart:io';

void main(List<String> args) {
  print(maiorMenor());
}

String maiorMenor() {
  stdout.writeln('Digite o 1º número: ');
  double num1 = double.parse(stdin.readLineSync()!);
  stdout.writeln('Digite o 2º número: ');
  double num2 = double.parse(stdin.readLineSync()!);
  stdout.writeln('Digite o 3º número: ');
  double num3 = double.parse(stdin.readLineSync()!);
  if (num1 > num2 && num1 > num3) {
    if (num2 > num3) {
      String resultado = 'O maior número é o $num1 e o menor número é o $num3';
      return resultado;
    } else {
      String resultado = 'O maior número é o $num1 e o menor número é o $num2';
      return resultado;
    }
  } else if (num2 > num1 && num2 > num3) {
    if (num1 > num3) {
      String resultado = 'O maior número é o $num2 e o menor número é o $num3';
      return resultado;
    } else {
      String resultado = 'O maior número é o $num2 e o menor número é o $num1';
      return resultado;
    }
  } else if (num3 > num1 && num3 > num2) {
    if (num1 > num2) {
      String resultado = 'O maior número é o $num3 e o menor número é o $num2';
      return resultado;
    } else {
      String resultado = 'O maior número é o $num3 e o menor número é o $num1';
      return resultado;
    }
  } else {
    String resultado = 'Não foi possível detectar maior ou menor';
    return resultado;
  }
}
