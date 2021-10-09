import 'package:flutter/material.dart';

class OurTheme {
  Color _fullWhite = Color.fromARGB(255, 255, 255, 255);
  Color _lightGrey = Color.fromARGB(255, 188, 188, 188);
  Color _lightBrown = Color.fromARGB(255, 80, 90, 20);

  ThemeData buildTheme() {
    return ThemeData(
        canvasColor: _fullWhite,
        secondaryHeaderColor: _lightGrey,
        accentColor: _lightBrown,
        primaryColor: _lightBrown,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: _lightGrey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: _lightBrown),
          ),
        ));
  }
}
