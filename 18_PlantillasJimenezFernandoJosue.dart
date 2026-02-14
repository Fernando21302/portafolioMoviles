import 'dart:io';

void Average(double s1, double s2, double s3, name, i){ 
  String? classify;
  double a = 0;
  a = (s1 + s2 + s3) / 3;
  if(a <= 100 && a >= 90){
    classify = 'Excellent';
  } else if (a <= 89 && a >= 80){
    classify = 'Good';
  } else if (a <= 79 && a >= 70){
    classify = 'Satisfactory';
  } else if (a <= 69){
    classify = 'Failing';
  }
  print('Student $i name: $name');
  print('exam 1: $s1');
  print('exam 2: $s2');
  print('exam 3: $s3');
  print('Average: $a');
  print('Classification: $classify');
}

void main(){
  int student = 0;
  stdout.writeln('Intert the student quantity');
  student = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= student; i++){
    double score1 = 0;
    double score2 = 0;
    double score3 = 0;
    String? name;
    stdout.writeln('Insert student´s name');
    name = stdin.readLineSync();
    stdout.writeln('Insert the three scores');
    score1 = double.parse(stdin.readLineSync()!);
    score2 = double.parse(stdin.readLineSync()!);
    score3 = double.parse(stdin.readLineSync()!);
    do {
      stdout.writeln('One of the scores is not valid, inseret them again');
      score1 = double.parse(stdin.readLineSync()!);
      score2 = double.parse(stdin.readLineSync()!);
      score3 = double.parse(stdin.readLineSync()!);
    } while (score1 > 100 && score2 > 100 && score3 > 100 || score1 < 0 && score2 < 0 && score3 < 0);
    Average(score1, score2, score3, name, i);
  }
}