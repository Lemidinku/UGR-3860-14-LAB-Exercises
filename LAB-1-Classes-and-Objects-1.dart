// Exercise 1: Design a Person class with properties like name, age, and address.
// Create objects of this class and access/modify their attributes

class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  void printDetails() {
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
  }
}

void main() {
  Person Lemi = Person("Lemi", 21, "5-kilo");
  Person Dinku = Person("Dinku", 50, "Piassa");

  // Access attributes
  print("Details of person1:");
  Lemi.printDetails();

  // Modify attributes
  Dinku.age = 45;
  Lemi.address = "6-kilo";

  // Access modified attributes
  print("\nDetails of person2 after modification:");
  Dinku.printDetails();
}
