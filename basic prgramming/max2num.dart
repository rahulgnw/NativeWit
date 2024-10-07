//In this program we find maximum of two numbers
import 'dart:io';

void findMax(int num1, int num2) {
  int max;
  if (num1 > num2) {
    max = num1;
  } else {
    max = num2;
  }
  print("The maximum of $num1 and $num2 is $max");
}

void main() {
  print("Enter the first number:");
  int num1 = int.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  int num2 = int.parse(stdin.readLineSync()!);

  findMax(num1, num2);
}