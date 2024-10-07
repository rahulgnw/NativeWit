//this program shows the prime number between the interval
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
  print("Enter the lower bound of the interval:");
  int lower = int.parse(stdin.readLineSync()!);

  print("Enter the upper bound of the interval:");
  int upper = int.parse(stdin.readLineSync()!);

  print("Prime numbers between $lower and $upper are:");
  for (int i = lower; i <= upper; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }
}