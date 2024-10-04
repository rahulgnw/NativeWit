//parameter and no return type
import 'dart:io';
void add(int a, int b) {
  int sum = a + b;
  print("the value is :$sum");
}

void main() {
  int? num1 = int.parse(stdin.readLineSync()!);
  int? num2 = int.parse(stdin.readLineSync()!);

  add(num1, num2);
}