import 'package:flutter/material.dart';
import 'package:flutter_animation/screens/home.dart';
import 'package:flutter_animation/screens/sandbox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ninja Trips',
      home: Home(),
    );
  }
}
