import 'package:flutter/material.dart';

class AppTheme {
  final ThemeData _lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: Colors.blue,
    ),
  );
  final ThemeData _darkTheme = ThemeData(
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Color(0xFF0C134F)),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFF0C134F),
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
        ),
        selectedIconTheme: IconThemeData(color: Colors.blue),
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.white),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    scaffoldBackgroundColor: const Color.fromARGB(255, 29, 38, 125),
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF0C134F)),
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: Colors.black,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        color: Colors.white,
      ),
      titleLarge: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      displayLarge: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  ThemeData get lightTheme => _lightTheme;

  ThemeData get darkTheme => _darkTheme;
}
