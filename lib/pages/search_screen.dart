import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_services.dart';

class SearchPage extends StatelessWidget {

  String? cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Search a City",
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w700
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            onSubmitted: (value) async
            {
              cityName = value;
              WeatherServices services = WeatherServices();
              WeatherModel weather = await services.getWeather(cityName: cityName!);
              print(weather);
            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 20.0),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
              hintText: "search a city",
              label: const Text("search"),
              suffixIcon: const Icon(Icons.search)
            ),
          ),
        ),
      ),
    );
  }
}
