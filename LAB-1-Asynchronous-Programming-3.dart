import 'dart:async';

// Function to simulate loading data from a database asynchronously
Future<List<String>> loadDataFromDatabase() async {
  // Simulate a delay of 2 seconds
  await Future.delayed(Duration(seconds: 2));

  // Simulated list of data
  List<String> data = ['Lemi', 'Dinku', 'Gilo', 'Lemi'];

  // Return the list of data
  return data;
}

void main() async {
  print('Loading data from database...');
  List<String> loadedData = await loadDataFromDatabase();
  print('Data loaded successfully:');
  print(loadedData);
}
