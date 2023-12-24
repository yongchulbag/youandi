import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(
              color: Colors.white, fontFamily: 'parisienne', fontSize: 80),
        ),
      ),
      home: HomeScreen(),
    ),
  );
}
