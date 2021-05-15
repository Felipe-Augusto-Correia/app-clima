import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  UserLocation userLocation = new UserLocation();

  @override
  void initState() {
    super.initState();
    userLocation.getLocation();
  }

  @override
  Widget build(BuildContext context) {
    String myMargin = 'abc';
    double myMarginAsADouble;

    try {
      myMarginAsADouble = double.parse(myMargin);
    } catch (e) {
      myMarginAsADouble = 30;
    }

    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(myMarginAsADouble),
        color: Colors.red,
      ),
    );
  }
}
