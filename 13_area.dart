import 'dart:io';
import 'dart:math';

void main() {
  bool salir = false;

  while (!salir) {
    print('MENÚ PRINCIPAL');
    print('1. Calcular Área');
    print('2. Calcular Volumen');
    print('3. Salir');
    stdout.write('Seleccione una opción: ');
    int opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        menuArea();
        break;
      case 2:
        menuVolumen();
        break;
      case 3:
        salir = true;
        print('Programa finalizado.');
        break;
      default:
        print('Opción no válida.');
    }
  }
}

void menuArea() {
  print('CÁLCULO DE ÁREAS');
  print('1. Círculo');
  print('2. Triángulo');
  print('3. Rectángulo');
  stdout.write('Seleccione una opción: ');
  int opcion = int.parse(stdin.readLineSync()!);

  switch (opcion) {
    case 1:
      stdout.write('Ingrese el radio: ');
      double radio = double.parse(stdin.readLineSync()!);
      double area = pi * radio * radio;
      print('Área del círculo: $area');
      break;

    case 2:
      stdout.write('Ingrese la base: ');
      double base = double.parse(stdin.readLineSync()!);
      stdout.write('Ingrese la altura: ');
      double altura = double.parse(stdin.readLineSync()!);
      double area = (base * altura) / 2;
      print('Área del triángulo: $area');
      break;

    case 3:
      stdout.write('Ingrese la base: ');
      double base = double.parse(stdin.readLineSync()!);
      stdout.write('Ingrese la altura: ');
      double altura = double.parse(stdin.readLineSync()!);
      double area = base * altura;
      print('Área del rectángulo: $area');
      break;

    default:
      print('Opción no válida.');
  }
}

void menuVolumen() {
  print('CÁLCULO DE VOLÚMENES');
  print('1. Esfera');
  print('2. Pirámide');
  print('3. Cubo');
  stdout.write('Seleccione una opción: ');
  int opcion = int.parse(stdin.readLineSync()!);

  switch (opcion) {
    case 1:
      stdout.write('Ingrese el radio: ');
      double radio = double.parse(stdin.readLineSync()!);
      double volumen = (4 / 3) * pi * pow(radio, 3);
      print('Volumen de la esfera: $volumen');
      break;

    case 2:
      stdout.write('Ingrese el área de la base: ');
      double base = double.parse(stdin.readLineSync()!);
      stdout.write('Ingrese la altura: ');
      double altura = double.parse(stdin.readLineSync()!);
      double volumen = (base * altura) / 3;
      print('Volumen de la pirámide: $volumen');
      break;

    case 3:
      stdout.write('Ingrese el lado: ');
      double lado = double.parse(stdin.readLineSync()!);
      double volumen = pow(lado, 3).toDouble();
      print('Volumen del cubo: $volumen');
      break;

    default:
      print('Opción no válida.');
  }
}
