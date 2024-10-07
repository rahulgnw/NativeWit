//This program finds the value of nth fibannoci number
import 'dart:io';
int fibonacci(int n) {
  if (n <= 1) {
    return n;
  }
  int a = 0;
  int b = 1;
  for (int i = 2; i <= n; i++) {
    int temp = a + b;
    a = b;
    b = temp;
  }
  return b;
}
void main() {
  print("Enter the value of n:");
  int n = int.parse(stdin.readLineSync()!);

  int result = fibonacci(n);
  print("The $n-th Fibonacci number is: $result");
}