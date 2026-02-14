import 'dart:io';

void main() {
  int n = 0;
  stdout.writeln("Dame el numero de la tabla de multiplicar: ");
  n = int.parse(stdin.readLineSync()!);
  for (int c = 0; c < 10; c++) {
    int r = 0;
    r = n * c;
    stdout.write('$n * $c = $r \n');
  }
}
