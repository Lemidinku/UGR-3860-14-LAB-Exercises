// Exercise 1: Implement a Rectangle class with constructor arguments for width and height.
// Create methods to calculate area and perimeter.
class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double calculateArea() {
    return width * height;
  }

  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  // Create a rectangle object
  Rectangle rectangle = Rectangle(5, 10);

  // Calculate and print area
  double area = rectangle.calculateArea();
  print("Area of the rectangle: $area");

  // Calculate and print perimeter
  double perimeter = rectangle.calculatePerimeter();
  print("Perimeter of the rectangle: $perimeter");
}
