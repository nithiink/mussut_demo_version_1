import 'package:flutter/material.dart';
import 'package:mussut_demo_version_1/screens/newPackage.dart';

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
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: NewPackage(),
    );
  }
}
