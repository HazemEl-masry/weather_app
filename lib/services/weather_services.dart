import 'dart:convert';

import 'package:http/http.dart' as http;
class WeatherServices
{
  void getWeather({required String cityName}) async
  {
    String baseUrl = "http://api.weatherapi.com/v1";
    String apiKey = "0f06e9aa4dbc4ec68bb174950231805";
    Uri url = Uri.parse("$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=3");
    http.Response response = await http.get(url);
    Map<String , dynamic> data = jsonDecode(response.body);

    print(data);
  }
}