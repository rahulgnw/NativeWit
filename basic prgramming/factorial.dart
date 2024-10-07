//This program helps to find the factorial of two numbers

import 'dart:io';
int factorial(int n) {
  int result = 1;
  for (int i = 2; i <= n; i++) {
    result *= i;
  }
  return result;
}
void main() {
  print("Enter a number:");
  int num = int.parse(stdin.readLineSync()!);

  int fact = factorial(num);
  print("The factorial of $num is $fact");
}