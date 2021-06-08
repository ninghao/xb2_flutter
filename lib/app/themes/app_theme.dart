import 'package:flutter/material.dart';

class AppTheme {
  // 亮色主题
  static ThemeData light = ThemeData(
    primaryColor: Colors.deepPurpleAccent,
    accentColor: Colors.deepPurple.shade900,
    colorScheme: ColorScheme.light(
      primary: Colors.deepPurpleAccent,
      secondary: Colors.amber,
    ),
  );

  // 暗色主题
  static ThemeData dark = ThemeData(
    primaryColor: Colors.deepPurpleAccent,
    accentColor: Colors.deepPurple.shade900,
    colorScheme: ColorScheme.dark(
      primary: Colors.deepPurpleAccent,
      secondary: Colors.amber,
    ),
  );
}
