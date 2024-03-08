void main() {
  String original = "Lemi Dinku";
  String reversed = reverseString(original);
  print("Orignal string: $original");
  print("Reversed string: $reversed");
}

// Functon to reverse a string
String reverseString(String str) {
  String reversed = '';
  for (int i = str.length - 1; i >= 0; i--) {
    reversed += str[i];
  }
  return reversed;
}
