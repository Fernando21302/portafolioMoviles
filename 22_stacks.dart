void main() {
  List<int> pila = [];

  push(pila, 10);
  push(pila, 20);
  push(pila, 30);

  print("Pila actual: $pila");

  int? eliminado = pop(pila);
  print("Elemento eliminado: $eliminado");

  print("Pila después de pop: $pila");
}

void push(List<int> pila, int valor) {
  pila.add(valor);
  print("Se insertó $valor en la pila");
}

int? pop(List<int> pila) {
  if (pila.isEmpty) {
    print("UNDERFLOW");
    return null;
  }

  int valor = pila.removeLast();
  return valor;
}
