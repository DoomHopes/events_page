import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      tabBarTheme: TabBarTheme(
        indicatorSize: TabBarIndicatorSize.tab,
        labelStyle: const TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
        unselectedLabelColor: Colors.white,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFF0B173B),
        ),
      ),
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
          fontSize: 23,
          color: Colors.white,
        ),
        headline2: TextStyle(
          fontSize: 23,
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
        button: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
