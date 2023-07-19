import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    getLocation();
    super.initState();
  }

  void getLocation() async {
    Location lc = Location();
    await lc.getCurrentLocation();
    print(lc.longitude);
    print(lc.latitude);
  }

  Widget build(BuildContext context) {
    return Scaffold();
  }
}
