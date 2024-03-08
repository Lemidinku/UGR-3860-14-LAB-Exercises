// Exercise 2: Generate a list of random numbers and use
//a Set to remove duplicate elements. Print the unique numbers.

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 1, 2, 3];
  print('Original list: $numbers');

  Set<int> uniqueNumbers = numbers.toSet();
  print('Unique numbers: $uniqueNumbers');
}
