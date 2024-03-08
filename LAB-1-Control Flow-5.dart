// Exercise 5: Write a program that takes a grade as input and
//uses a switch statement
//to display the corresponding letter grade (A, B, C, etc.)

import 'dart:io';

void main() {
  print("Enter your grade:");
  int grade = int.parse(stdin.readLineSync()!);

  String letterGrade;

  if (grade >= 90 && grade <= 100) {
    letterGrade = 'A';
  } else if (grade >= 80 && grade < 90) {
    letterGrade = 'B';
  } else if (grade >= 70 && grade < 80) {
    letterGrade = 'C';
  } else if (grade >= 60 && grade < 70) {
    letterGrade = 'D';
  } else {
    letterGrade = 'F';
  }

  print("Your letter grade is $letterGrade");
}
