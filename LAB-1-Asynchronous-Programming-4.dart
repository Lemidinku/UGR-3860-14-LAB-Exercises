import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchWeatherData(
    String apiKey, String city) async {
  final response = await http.get(Uri.parse(
      'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey'));
  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to fetch weather data: ${response.statusCode}');
  }
}

void main() async {
  final apiKey = 'API_KEY';
  final city = 'Addis Ababa';

  try {
    print('Fetching weather data for $city...');
    final weatherData = await fetchWeatherData(apiKey, city);
    final temperature =
        (weatherData['main']['temp'] - 273.15).toStringAsFixed(2);
    final description = weatherData['weather'][0]['description'];
    print('Current temperature in $city: $temperature°C');
    print('Weather conditions: $description');
  } catch (e) {
    print('Error fetching weather data: $e');
  }
}
