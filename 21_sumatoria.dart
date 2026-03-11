import 'dart:io';

void main() {
  stdout.write("Ingresa un número: ");
  int n = int.parse(stdin.readLineSync()!);

  int resultado = suma(n);

  print("La sumatoria de los números hasta $n es: $resultado");
}

int suma(int n) {
  if (n == 0) {
    return 0;
  } else {
    return n + suma(n - 1);
  }
}
