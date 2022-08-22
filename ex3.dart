/*
  Escreva um programa que leia as medidas dos lados de um triângulo e escreva se ele é 
  Equilátero, Isósceles ou Escaleno. Sendo que: − Triângulo Equilátero: possui os 3 lados 
  iguais. − Triângulo Isóscele: possui 2 lados iguais. − Triângulo Escaleno: possui 3 lados 
  diferentes.
*/

import 'dart:io';

void main(List<String> args) {
  triangulo();
}

String triangulo() {
  stdout.writeln('Insira o valor do 1º lado:');
  double primeiro = double.parse(stdin.readLineSync()!);
  stdout.writeln('Insira o valor do 2º lado:');
  double segundo = double.parse(stdin.readLineSync()!);
  stdout.writeln('Insira o valor do 3º lado:');
  double terceiro = double.parse(stdin.readLineSync()!);

  if (primeiro == segundo && segundo == terceiro) {
    String resultado = 'Triangulo Equilátero';
    stdout.writeln(resultado);
    return resultado;
  } else if ((primeiro == segundo && primeiro != terceiro) ||
      (primeiro != segundo && primeiro == terceiro) ||
      (primeiro != terceiro && segundo == terceiro)) {
    String resultado = 'Triângulo Isóscele';
    stdout.writeln(resultado);
    return resultado;
  } else {
    String resultado = 'Triângulo Escaleno';
    stdout.writeln(resultado);
    return resultado;
  }
}
