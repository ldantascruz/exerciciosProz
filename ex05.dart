/*
  Um posto está vendendo combustíveis com a seguinte tabela de descontos: 
  Álcool:
  • Até 20 litros: desconto de 3% por litro
  • Acima de 20 litros: Desconto de 5% por litro.
  Gasolina:
  • Até 20 litros: desconto de 4% por litro
  • Acima de 20 litros, desconto de 6% por litro
  Escreva um algoritmo que leia o número de litros vendidos, o tipo de combustível (codificado 
  da seguinte forma: A-álcool. G-gasolina), calcule e imprima o valor a ser pago pelo cliente. 
*/

import 'dart:io';

void main(List<String> args) {
  alcoolGasolina();
}

void alcoolGasolina() {
  stdout.writeln('Digite a quantidade de litros vendidos');
  double litros = double.parse(stdin.readLineSync()!);

  stdout.writeln('''
                    Digite qual foi o combustível abastecido:
                    A - álcool;
                    G - gasolina;
  ''');

  String combustivel = stdin.readLineSync()!.toUpperCase();

  String valorGasolina() {
    stdout.writeln('Digite o valor do litro de gasolina:');
    double valor = double.parse(stdin.readLineSync()!);
    if (litros > 20) {
      double resultado = litros * (valor - (valor * 0.03));
      return 'R\$ ${resultado.toStringAsFixed(2)}';
    } else {
      double resultado = litros * (valor - (valor * 0.05));
      return 'R\$ ${resultado.toStringAsFixed(2)}';
    }
  }

  String valorAlcool() {
    stdout.writeln('Digite o valor do litro do alcool:');
    double valor = double.parse(stdin.readLineSync()!);
    if (litros > 20) {
      double resultado = litros * (valor - (valor * 0.06));
      return 'R\$ ${resultado.toStringAsFixed(2)}';
    } else {
      double resultado = litros * (valor - (valor * 0.04));
      return 'R\$ ${resultado.toStringAsFixed(2)}';
    }
  }

  switch (combustivel) {
    case 'A':
      print(valorAlcool());
      break;
    case 'G':
      print(valorGasolina());
      break;
  }
}
