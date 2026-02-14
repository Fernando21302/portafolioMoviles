import 'dart:io';

main() {
  int a;
  int b;
  int c;
  int d;
  int aux;
  stdout.write('Ingrese un numero: ');
  a = int.parse(stdin.readLineSync()!);
  stdout.write('Ingrese un numero: ');
  b = int.parse(stdin.readLineSync()!);
  stdout.write('Ingrese un numero: ');
  c = int.parse(stdin.readLineSync()!);
  stdout.write('Ingrese un numero: ');
  d = int.parse(stdin.readLineSync()!);
  print(' El orden original es $a $b $c $d');
  if (a < b) {
    aux = a;
    a = b;
    b = aux;
    if (a < c) {
      aux = a;
      a = c;
      c = aux;
      if (a < d) {
        aux = a;
        a = d;
        d = aux;
        if (b < c) {
          aux = b;
          b = c;
          c = aux;
          if (b < d) {
            aux = b;
            b = d;
            d = aux;
            if (c < d) {
              aux = c;
              c = d;
              d = aux;
            }
          }
        }
      }
    }
  }
  print('El orden es $a $b $c $d');
}
