import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 80, 163, 71)),
        useMaterial3: true,
        primaryColor: Color.fromARGB(255, 80, 163, 71),
        cardColor: Color.fromARGB(255, 255, 255, 255),
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),

        secondaryHeaderColor: Color.fromARGB(255, 255, 177, 61)
      );

  static double primaryElevation = 2.0;

  static double primaryMargin = 10.0;
}