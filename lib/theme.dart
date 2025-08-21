import 'package:flutter/material.dart';

class AppTheme {

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,

    primaryColor: Colors.green,
    scaffoldBackgroundColor: Colors.white,

    colorScheme: ColorScheme.light(
      primary: Colors.green,
      secondary: Colors.green,
      surface: Colors.white,
      onPrimary: Colors.white,
      onSurface: Colors.black,
    ),

    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.black, fontSize: 14),
      bodyLarge: TextStyle(color: Colors.black, fontSize: 16),
      titleMedium: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.green,
        side: BorderSide(color: Colors.green, width: 1.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  );
}
