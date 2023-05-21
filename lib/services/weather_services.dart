import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model.dart';
class WeatherServices
{
  Future<WeatherModel> getWeather({required String cityName}) async
  {
    String baseUrl = "http://api.weatherapi.com/v1";
    String apiKey = "0f06e9aa4dbc4ec68bb174950231805";
    Uri url = Uri.parse("$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7");
    http.Response response = await http.get(url);
    Map<String , dynamic> data = jsonDecode(response.body);

    // var jsonData = data['forecast']['forecastday'][0];
    
    // WeatherModel weather = WeatherModel(
    //     date: data['location']['localtime'],
    //     temp: jsonData['avgtemp_c'],
    //     maxTemp: jsonData['maxtemp_c'],
    //     minTemp: jsonData['mintemp_c'],
    //     weatherStateName: jsonData['condition']['text'],
    // );
    WeatherModel weather = WeatherModel.fromJson(data);
    return weather;
  }
}