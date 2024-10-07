//This program show the compound Interest
import 'dart:io';
import 'dart:math';
double compoundInterest(double principal, double rate, double time, int n) {
  double amount = principal * pow((1 + rate / 100 / n), n * time);
  double interest = amount - principal;
  return interest;
}
void main() {
  print("Enter the principal amount:");
  double principal = double.parse(stdin.readLineSync()!);

  print("Enter the rate of interest (in %):");
  double rate = double.parse(stdin.readLineSync()!);

  print("Enter the time period (in years):");
  double time = double.parse(stdin.readLineSync()!);

  print("Enter the number of times interest is compounded per year:");
  int n = int.parse(stdin.readLineSync()!);

  double interest = compoundInterest(principal, rate, time, n);
  print("The compound interest is: \$${interest.toStringAsFixed(2)}");
}