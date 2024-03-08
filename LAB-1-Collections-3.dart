// Exercise 3: Create a Map<String, int> to store student names
//and their corresponding marks. Use map methods like putIfAbsent,
// forEach, and containsKey to add, iterate, and check for entries.

void main() {
  Map<String, int> studentMarks = {
    'Lemi': 90,
    'Dinku': 85,
    'Gilo': 95,
  };

  print('Original map: $studentMarks');

  studentMarks.putIfAbsent('Frank', () => 88);
  print('Added a new entry: $studentMarks');

  studentMarks.forEach((name, mark) {
    print('Student: $name, Mark: $mark');
  });

  print(
      'Does the map contain a student named Alice? ${studentMarks.containsKey('Alice')}');
}
