import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:livetestthree/pojo.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  var dataList = [
    {
      "city": "New York",
      "temperature": 20,
      "condition": "Clear",
      "humidity": 60,
      "windSpeed": 5.5
    },
    {
      "city": "Los Angeles",
      "temperature": 25,
      "condition": "Sunny",
      "humidity": 50,
      "windSpeed": 6.8
    },
    {
      "city": "London",
      "temperature": 15,
      "condition": "Partly Cloudy",
      "humidity": 70,
      "windSpeed": 4.2
    },
    {
      "city": "Tokyo",
      "temperature": 28,
      "condition": "Rainy",
      "humidity": 75,
      "windSpeed": 8.0
    },
    {
      "city": "Sydney",
      "temperature": 22,
      "condition": "Cloudy",
      "humidity": 55,
      "windSpeed": 7.3
    },
  ];
  List<Pojo> countryList = [];
  @override
  void initState() {
    decoder();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather Info App",
        ),
      ),
      body: ListView.builder(
        itemCount: countryList.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(
              "City: ${countryList[index].city ?? ""}",
            ),
            subtitle: Wrap(
              spacing: 25,
              children: [
                Text(
                  "Temperature: ${countryList[index].temperature ?? ""} C"
                ),
                Text(
                  "Condition: ${countryList[index].condition ?? ""}"
                ),
                Text(
                  "Humidity: ${countryList[index].humidity ?? ""}"
                ),
                Text(
                    "Wind Speed: ${countryList[index].windSpeed ?? ""}"
                ),
              ],
            ),
          );
        },
      ),
    );
  }
  void decoder(){
    for(var data in dataList){
      Pojo d = Pojo.fromJson(data);
      countryList.add(d);
    }
  }
}
