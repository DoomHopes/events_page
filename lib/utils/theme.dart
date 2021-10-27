import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      shadowColor: Colors.grey,
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
        bodyText2: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
        headline1: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
        headline2: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
        subtitle1: TextStyle(
          fontSize: 10,
          color: Colors.white,
        ),
        subtitle2: TextStyle(
          fontSize: 10,
          color: Colors.white,
        ),
      ),
    );
  }
}
