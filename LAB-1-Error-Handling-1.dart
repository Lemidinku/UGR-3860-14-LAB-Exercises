import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  String input = stdin.readLineSync()!;

  try {
    int number = int.parse(input);
    print('Integer value: $number');
  } catch (e) {
    print('Error: Input is not a valid number');
  }
}
