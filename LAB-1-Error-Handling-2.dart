import 'dart:io';

double divide(int dividend, int divisor) {
  if (divisor == 0) {
    print("You cannot divide a number by zero");
  }
  return dividend / divisor;
}

void main() {
  stdout.write('Enter the dividend: ');
  int dividend = int.parse(stdin.readLineSync()!);

  stdout.write('Enter the divisor: ');
  int divisor = int.parse(stdin.readLineSync()!);

  try {
    double result = divide(dividend, divisor);
    print('Result of division: $result');
  } catch (e) {
    print('Error: Division by zero is not allowed');
  }
}
