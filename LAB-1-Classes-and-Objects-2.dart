// Exercise 2: Define a Student class that inherits from Person and
//adds properties like roll number and marks.
//Create student objects and use methods to calculate total marks or average
class Person {
  String name;
  int age;
  String address;

  // Constructor
  Person(this.name, this.age, this.address);

  // Method to print person details
  void printDetails() {
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
  }
}

class Student extends Person {
  int rollNumber;
  List<int> marks;

  // Constructor
  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  // Method to calculate total marks
  int calculateTotalMarks() {
    int total = 0;
    for (int mark in marks) {
      total += mark;
    }
    return total;
  }

  // Method to calculate average marks
  double calculateAverageMarks() {
    int total = calculateTotalMarks();
    return total / marks.length;
  }
}

void main() {
  // Create student objects
  Student student1 = Student("Abebe", 20, "5-kilo", 1, [85, 90, 95]);
  Student student2 = Student("Kebede", 22, "4-kilo", 2, [75, 80, 85]);

  // Access person details
  print("Details of student1:");
  student1.printDetails();
  print("Roll Number: ${student1.rollNumber}");
  print("Marks: ${student1.marks}");

  // Calculate total marks and average marks
  print("\nTotal marks of student1: ${student1.calculateTotalMarks()}");
  print("Average marks of student1: ${student1.calculateAverageMarks()}");

  // Access person details
  print("\nDetails of student2:");
  student2.printDetails();
  print("Roll Number: ${student2.rollNumber}");
  print("Marks: ${student2.marks}");

  // Calculate total marks and average marks
  print("\nTotal marks of student2: ${student2.calculateTotalMarks()}");
  print("Average marks of student2: ${student2.calculateAverageMarks()}");
}
