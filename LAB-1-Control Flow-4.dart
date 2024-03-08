// Exercise 4: Implement a simple calculator using a switch
//statement to handle addition, subtraction, multiplication,
//and division

import 'dart:io';

void main() {
  print("Enter the first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  print("Enter the operation (+, -, *, /):");
  String operation = stdin.readLineSync()!;

  double result;

  switch (operation) {
    case '+':
      result = num1 + num2;
      print("Result: $result");
      break;
    case '-':
      result = num1 - num2;
      print("Result: $result");
      break;
    case '*':
      result = num1 * num2;
      print("Result: $result");
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
        print("Result: $result");
      } else {
        print("Error: Division by zero!");
      }
      break;
    default:
      print("Invalid operation!");
  }
}
