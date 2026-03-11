import 'dart:io';

void main() {
  stdout.write("Ingresa un número: ");
  int n = int.parse(stdin.readLineSync()!);

  if (n < 0) {
    print("El factorial no está definido para números negativos.");
  } else {
    int resultado = factorial(n);
    print("El factorial de $n es: $resultado");
  }
}

int factorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}
