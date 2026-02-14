import 'dart:io';

main(){
  final name = stdin.readLineSync();
  final middlename = stdin.readLineSync();
  final lastname = stdin.readLineSync();
  stdout.writeln('Hi, $name $middlename $lastname');
}