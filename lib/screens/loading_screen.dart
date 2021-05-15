import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart';
import 'dart:convert' as convert;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
    getData();
  }

  void getLocation() async {
    Location userLocation = Location();
    await userLocation.getCurrentLocation();
    print(userLocation.latitude);
    print(userLocation.longitude);
  }

  void getData() async {
    var url = Uri.https('api.openweathermap.org', 'data/2.5/weather', {
      'lat': '39',
      'lon': '139',
      'appid': '3d36a89c523648fc3fa467279c978f54'
    });
    var response = await get(url);
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
