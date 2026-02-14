import 'dart:io';
void main(List<String> args) {
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  if (a > b){
    print('$a es mayor que $b');
  } else {
    print('$b es mayor que $a');
  }
}