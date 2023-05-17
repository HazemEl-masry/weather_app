import 'package:flutter/material.dart';
import 'package:weather_app/pages/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
      body: const Column(
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
      ),
    );
  }
}
