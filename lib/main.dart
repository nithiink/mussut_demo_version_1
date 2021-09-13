import 'package:flutter/material.dart';
import 'package:mussut_demo_version_1/constants.dart';
import 'screens/Home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mussut",
      theme: ThemeData(
        fontFamily: "Google Sans",
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontSize: 15,
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
        primaryColor: primaryColor,
        accentColor: secondaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(false),
    );
  }
}
