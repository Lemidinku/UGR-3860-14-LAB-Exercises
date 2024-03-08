void main() {
  int start = 1;
  int end = 100;

  print("Prime numbers between $start and $end:");
  for (int i = start; i <= end; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }
}

bool isPrime(int n) {
  if (n <= 1) {
    return false;
  }
  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}
