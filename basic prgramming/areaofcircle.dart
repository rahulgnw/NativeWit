//This program shows how to find area of circle using dart

import 'dart:io';
import 'dart:math';

double circleArea(double radius) {
  return pi * pow(radius, 2);
}

void main() {
  print("Enter the radius of the circle:");
  double radius = double.parse(stdin.readLineSync()!);

  double area = circleArea(radius);
  print("The area of the circle is: ${area.toStringAsFixed(2)}");
}