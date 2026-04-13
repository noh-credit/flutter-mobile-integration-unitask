import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light => ThemeData.light(
    useMaterial3: true,
  ).copyWith(
    brightness: .light,
    visualDensity: .adaptivePlatformDensity,
    scaffoldBackgroundColor: Colors.white,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
      backgroundColor: Color(0xFF3B82F6),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Color(0xFF3B82F6),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF3B82F6),
        padding: const .symmetric(
          vertical: 24,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: .circular(12),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationThemeData(
      filled: true,
      fillColor: Color(0xFFF9FAFB),
      hintStyle: const TextStyle(
        color: Color(0xFF9CA3AF),
      ),
      border: OutlineInputBorder(
        borderRadius: .circular(12),
        borderSide: BorderSide.none,
      )
    )
  );


  static ThemeData get dark => ThemeData.dark(
    useMaterial3: true,
  ).copyWith();
}