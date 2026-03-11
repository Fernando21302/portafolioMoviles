void main() {
  List<String> cola = [];

  enqueue(cola, "Juan");
  enqueue(cola, "Maria");
  enqueue(cola, "Carlos");

  print("Cola actual: $cola");

  String? usuario = dequeue(cola);
  print("Usuario atendido: $usuario");

  print("Cola después de dequeue: $cola");
}

void enqueue(List<String> cola, String nombre) {
  cola.add(nombre);
  print("$nombre fue agregado a la cola");
}

String? dequeue(List<String> cola) {
  if (cola.isEmpty) {
    print("UNDERFLOW");
    return null;
  }

  String usuario = cola.removeAt(0);
  return usuario;
}
