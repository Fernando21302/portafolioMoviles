import 'dart:io';

void main() {
  String calificacion;
  bool valida = false;

  while (!valida) {
    stdout.write('Ingrese la calificación americana (A+, A, B, C, D, F): ');
    calificacion = stdin.readLineSync()!.toUpperCase();

    switch (calificacion) {
      case 'A+':
        print('Calificación: 10');
        valida = true;
        break;
      case 'A':
        print('Calificación: 9');
        valida = true;
        break;
      case 'B':
        print('Calificación: 8');
        valida = true;
        break;
      case 'C':
        print('Calificación: 7');
        valida = true;
        break;
      case 'D':
        print('Calificación: 6');
        valida = true;
        break;
      case 'F':
        print('Calificación: 5');
        valida = true;
        break;
      default:
        print('Calificación no válida, intente nuevamente.\n');
    }
  }
}
