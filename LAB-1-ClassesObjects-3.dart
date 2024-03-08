// Exercise 3: Define a Shape abstract class with an abstract method calculateArea().
// Create subclasses like Circle and Square that inherit from Shape and implement the calculateArea()
//method specific to their shapes.

import 'dart:math';

abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  // Create circle object
  Circle circle = Circle(5);
  double circleArea = circle.calculateArea();
  print("Area of the circle: ${circleArea.toStringAsFixed(2)}");

  // Create square object
  Square square = Square(4);
  double squareArea = square.calculateArea();
  print("Area of the square: ${squareArea.toStringAsFixed(2)}");
}
