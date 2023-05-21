class WeatherModel
{
  String date;
  double temp;
  double maxTemp;
  double minTemp;
  String weatherStateName;

  WeatherModel(
      {
        required this.date,
        required this.temp,
        required this.maxTemp,
        required this.minTemp,
        required this.weatherStateName
      }
      );

  factory WeatherModel.fromJson(dynamic data)
  {
    var jsonData = data['forecast']['forecastday'][0]['day'];
    return WeatherModel(
        date: data['location']['localtime'],
        temp: jsonData['avgtemp_c'],
        maxTemp: jsonData['maxtemp_c'],
        minTemp: jsonData['mintemp_c'],
        weatherStateName: jsonData['condition']['text']
    );
    // date = data['location']['localtime'];
    // temp = jsonData['avgtemp_c'];
    // maxTemp = jsonData['avgtemp_c'];
    // minTemp = jsonData['mintemp_c'];
    // weatherStateName = jsonData['condition']['text'];
  }
  @override
  String toString() {
    // TODO: implement toString
    return 'tem = $temp min = $minTemp max = $maxTemp date = $date';
  }
}