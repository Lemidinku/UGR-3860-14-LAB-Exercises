// Exercise 5: Define a class Student with properties like name and marks (stored as a list).
// Implement a method to find the average mark of a student using list methods.

class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);

  double averageMark() {
    int total = 0;
    for (int mark in marks) {
      total += mark;
    }
    return total / marks.length;
  }
}

void main() {
  Student student = Student('Lemi', [90, 85, 95, 88, 92, 70]);
  print('Student: ${student.name}');
  print('Marks: ${student.marks}');
  print('Average mark: ${student.averageMark()}');
}
