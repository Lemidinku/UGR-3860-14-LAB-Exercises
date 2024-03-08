// Exercise 1: Create a list of your favorite hobbies and
//use various list methods like add, remove, sort,
//and isEmpty to manage the list contents.

void main() {
  List<String> hobbies = ['Reading', 'Coding', 'Swimming', 'Running'];
  print('My hobbies: $hobbies');

  hobbies.add('Cooking');
  print('Added a new hobby: $hobbies');

  hobbies.remove('Swimming');
  print('Removed a hobby: $hobbies');

  hobbies.sort();
  print('Sorted hobbies: $hobbies');

  print('Is the list empty? ${hobbies.isEmpty}');
}
