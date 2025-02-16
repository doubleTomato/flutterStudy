import 'package:flutter/material.dart';
import 'package:u_and_i/screen/home_screen.dart';
void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'batang',
      textTheme: TextTheme(
        displayLarge: TextStyle(
          color: Colors.white,
          fontSize: 70,
          fontFamily: 'cat',
        ),
        displayMedium: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: TextStyle(
          color: Colors.white,
          fontSize: 50,
        ),
        bodyMedium: TextStyle(
          color: Colors.white,
          fontSize: 20
        )
      )
    ),
      home: HomeScreen()
  ));
}

