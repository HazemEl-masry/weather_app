import 'package:http/http.dart' as http;
class WeatherServices
{
  void getWeather({required String cityName}) async
  {
    Uri url = Uri.parse("http://api.weatherapi.com/v1/current.json?key=52f93cd6b6ac421790b121934231705&q=London&aqi=no");
    http.Response response = await http.get(url);
  }
}