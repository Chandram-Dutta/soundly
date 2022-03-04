import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.purpleAccent.shade700,
  colorScheme: ColorScheme.dark(
    primary: Colors.grey.shade900,
    secondary: Colors.purpleAccent.shade700,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey.shade900,
    foregroundColor: Colors.purpleAccent.shade700,
    elevation: 0,
  ),
  scaffoldBackgroundColor: Colors.grey.shade900,
);
