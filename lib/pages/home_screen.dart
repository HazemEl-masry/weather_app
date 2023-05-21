import 'package:flutter/material.dart';
import 'package:weather_app/pages/search_screen.dart';

import '../models/weather_model.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

   WeatherModel? weather;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Weather App",
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w700
          ),
        ),
        actions: [
          IconButton(
              onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage(),));
              },
              icon: const Icon(Icons.search)
          )
        ],
      ),
      body: weather != null ? const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "There is no weather 😔 Start",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500
              ),
            ),
          ),
          Center(
            child: Text(
              "searching now 🔎",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500
              ),
            ),
          ),
        ],
      ) : Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const Text(
                "cairo",
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold
              ),
            ),
            const Text(
                "updated: 11.42",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w500
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/images/clear.png"),
                const Text(
                    "27.5",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const Column(
                  children: [
                    Text(
                      "max temp",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    Text(
                      "mai temp",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 22.0),
            const Text(
                "clear",
                style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold
                )
            ),
            const Spacer(flex: 3,)
          ],
        ),
      ),
    );
  }
}
