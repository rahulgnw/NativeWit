//This program shows the simple interest
import 'dart:io';
double simpleInterest(double principal, double rate, double time) {
  double interest = (principal * rate * time) / 100;
  return interest;
}
void main() {
  print("Enter the principal amount:");
  double principal = double.parse(stdin.readLineSync()!);

  print("Enter the rate of interest (in %):");
  double rate = double.parse(stdin.readLineSync()!);

  print("Enter the time period (in years):");
  double time = double.parse(stdin.readLineSync()!);

  double interest = simpleInterest(principal, rate, time);
  print("The simple interest is: \$${interest.toStringAsFixed(2)}");
}