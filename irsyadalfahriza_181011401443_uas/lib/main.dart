import 'package:flutter/material.dart';
import 'package:irsyadalfahriza_181011401443_uas/Screens/Homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.lightBlue[600], accentColor: Colors.white),
      home: Homescreen(),
    );
  }
}
