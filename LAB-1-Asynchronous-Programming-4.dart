import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  final apiUrl =
      'https://api.open-meteo.com/v1/forecast?latitude=52&longitude=13&current=temperature_2m,wind_speed_10m&hourly=temperature_2m,relative_humidity_2m,wind_speed_10m';

  final customWeatherApiClient = CustomWeatherApiClient(apiUrl);

  try {
    final weatherData = await customWeatherApiClient.fetchCustomWeather();

    final currentTemp = weatherData['current']['temperature_2m'];
    final currentWind = weatherData['current']['wind_speed_10m'];

    print('Temperature Right Now: $currentTemp°C');
    print('Wind Speed Right Now: $currentWind m/s');
  } catch (error) {
    print('Error while retrieving weather data: $error');
  }
}

class CustomWeatherApiClient {
  final String apiUrl;

  CustomWeatherApiClient(this.apiUrl);

  Future<Map<String, dynamic>> fetchCustomWeather() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to fetch custom weather data');
    }
  }
}
