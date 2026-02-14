import 'dart:io';

void main() {
  while (true) {
    stdout.write('\nIngrese un número (0 para salir): ');
    int x = int.parse(stdin.readLineSync()!);

    if (x == 0) {
      print('Fin.');
      break;
    }

    print('\nTabla de multiplicar del $x:');
    for (int i = 1; i <= 50; i++) {
      print('$x x $i = ${x * i}');
    }
  }
}
