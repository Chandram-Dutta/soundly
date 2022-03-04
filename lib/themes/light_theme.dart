import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
   brightness: Brightness.light,
  primaryColor: Colors.purpleAccent.shade700,
  colorScheme: ColorScheme.light(
    primary: Colors.grey.shade100,
    secondary: Colors.purpleAccent.shade700,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey.shade100,
    foregroundColor: Colors.purpleAccent.shade700,
    elevation: 0,
  ),
  scaffoldBackgroundColor: Colors.grey.shade100,
);
