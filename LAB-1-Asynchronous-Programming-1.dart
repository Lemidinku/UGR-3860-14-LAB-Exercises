import 'dart:async';
import 'dart:math';

// Function to simulate a network call and return a random quote after a delay
Future<String> fetchQuote() async {
  // Simulate a delay of 2 seconds
  await Future.delayed(Duration(seconds: 2));

  List<String> quotes = [
    "The only way to do great work is to love what you do. - Steve Jobs",
    "Innovation distinguishes between a leader and a follower. - Steve Jobs",
    "Your time is limited, don't waste it living someone else's life. - Steve Jobs",
    "Stay hungry, stay foolish. - Steve Jobs"
  ];

  Random random = Random();
  int index = random.nextInt(quotes.length);

  return quotes[index];
}

void main() async {
  print("Fetching quote...");
  String quote = await fetchQuote();
  print("Random Quote: $quote");
}
