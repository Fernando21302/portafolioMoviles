import 'dart:io';

void main() {
  int suma = 0;
  int x;

  do {
    stdout.write('Ingrese un número (0 para terminar): ');
    x = int.parse(stdin.readLineSync()!);
    suma += x;
  } while (x != 0);

  print('La suma total de los números ingresados es: $suma');
}
