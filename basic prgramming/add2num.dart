// dart program to add two number
import 'dart:io';
void addNumbers(int num1, int num2) {
  int sum = num1 + num2;
  print("The sum of $num1 and $num2 is $sum");
}

void main() {
  print("Enter the first number:");
  int num1 = int.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  int num2 = int.parse(stdin.readLineSync()!);

  addNumbers(num1, num2);
}
