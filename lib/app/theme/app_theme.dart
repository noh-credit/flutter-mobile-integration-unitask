import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light => ThemeData.light(
    useMaterial3: true,
  ).copyWith(
    brightness: .light,
    visualDensity: .adaptivePlatformDensity,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF3B82F6), // 배경 색상
      foregroundColor: Colors.white, // 아이콘 색상
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Color(0xFF3B82F6) // 텍스트 색상
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, // 텍스트 색상
        backgroundColor: Color(0xFF3B82F6),
        padding: .symmetric(vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: .circular(14),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Color(0xFFF9FAFB),
      prefixIconColor: Color(0xFF9CA3AF),
      hintStyle: TextStyle(
        color: Color(0xFF9CA3AF),
      ),
      border: OutlineInputBorder(
        borderRadius: .circular(12),
        borderSide: .none,
      ),
    )
  );

  static ThemeData get dark => ThemeData.dark(useMaterial3: true).copyWith(
    brightness: .dark,
    visualDensity: .adaptivePlatformDensity,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF3B82F6), // 배경 색상
      foregroundColor: Colors.white, // 아이콘 색상
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Color(0xFF3B82F6), // 텍스트 색상
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, // 텍스트 색상
        backgroundColor: Color(0xFF3B82F6),
        padding: .symmetric(vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: .circular(14)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Color(0xFFF9FAFB),
      prefixIconColor: Color(0xFF9CA3AF),
      hintStyle: TextStyle(color: Color(0xFF9CA3AF)),
      border: OutlineInputBorder(
        borderRadius: .circular(12),
        borderSide: .none,
      ),
    ),
  );


}