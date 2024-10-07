//This program shows that the entered number is prime or not

import 'dart:io';
bool isPrime(int num) {
  if (num <= 1) {
    return false;
  }
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}
void main() {
  print("Enter a number:");
  int num = int.parse(stdin.readLineSync()!);

  if (isPrime(num)) {
    print("$num is a prime number.");
  } else {
    print("$num is not a prime number.");
  }
}