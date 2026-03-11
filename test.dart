import 'dart:io';

List<int> colaTickets = [];

List<String> pilaAcciones = [];

void main() {
  bool salir = false;

  while (!salir) {
    mostrar_menu();

    stdout.write('Seleccione una opción: ');
    int opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        agregar_ticket();
        break;

      case 2:
        atender_ticket();
        break;

      case 3:
        registrar_accion();
        break;

      case 4:
        deshacer_accion();
        break;

      case 5:
        mostrar_estado();
        break;

      case 6:
        salir = true;
        print('Programa finalizado.');
        break;

      default:
        print('Opción no válida');
    }
  }
}

void mostrar_menu() {
  print('\n--- Gestión de Tickets ---');
  print('1. Agregar ticket');
  print('2. Atender ticket');
  print('3. Registrar acción del técnico');
  print('4. Deshacer última acción');
  print('5. Mostrar estado del sistema');
  print('6. Salir');
}

void agregar_ticket() {
  stdout.write('Ingrese número de ticket: ');
  int ticket = int.parse(stdin.readLineSync()!);

  colaTickets.add(ticket); // enqueue
  print('Ticket agregado a la cola.');
}

void atender_ticket() {
  if (colaTickets.isEmpty) {
    print('No hay tickets pendientes.');
  } else {
    int ticket = colaTickets.removeAt(0); // dequeue
    print('Atendiendo ticket: $ticket');
  }
}

void registrar_accion() {
  stdout.write('Ingrese acción del técnico: ');
  String accion = stdin.readLineSync()!;

  pilaAcciones.add(accion); // push
  print('Acción registrada.');
}

void deshacer_accion() {
  if (pilaAcciones.isEmpty) {
    print('No hay acciones para deshacer.');
  } else {
    String accion = pilaAcciones.removeLast(); // pop
    print('Se deshizo la acción: $accion');
  }
}

void mostrar_estado() {
  print('\n--- Estado del sistema ---');

  print('Tickets en cola:');
  print(colaTickets);

  print('Acciones del técnico:');
  print(pilaAcciones);
}
