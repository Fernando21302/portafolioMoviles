import 'dart:io';

void factorial(int n, int f){
  for (int c = n; c > 1; c--){
    f = f * c;
  }
  stdout.writeln('El factorial de $n es: $f');
}

void main() {
  int n = 0, f = 1;
  stdout.writeln('Ingrese un numero para calcular su factorial: ');
   n = int.parse(stdin.readLineSync()!);
  factorial(n, f);
}