// Exercise 3: Implement a program that reads a file from disk.
//Use try/catch to handle potential FileSystemException
// (e.g., file not found) and provide informative error messages.
import 'dart:io';

void main() {
  try {
    var filePath = 'lemi.txt';
    var file = File(filePath);
    var contents = file.readAsStringSync();

    print('Contents of the file:\n$contents');
  } catch (e) {
    if (e is FileSystemException) {
      print('Error: File not found');
    } else {
      print('An unexpected error occurred: $e');
    }
  }
}
