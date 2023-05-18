import 'dart:convert';

import 'package:http/http.dart' as http;
class WeatherServices
{
  void getWeather({required String cityName}) async
  {
    String baseUrl = "http://api.weatherapi.com/v1";
    String apiKey = "52f93cd6b6ac421790b121934231705";
    Uri url = Uri.parse("$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7");
    http.Response response = await http.get(url);
    Map<String , dynamic> data = jsonDecode(response.body);
  }
}