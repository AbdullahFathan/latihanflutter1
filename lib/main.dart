import 'package:flutter/material.dart';
import 'package:flutter_travel_app/screen/screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TravelKuyy",
      home: Homescreen(),
    );
  }
}
