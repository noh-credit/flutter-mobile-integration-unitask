import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light => ThemeData.light(
    useMaterial3: true,
  ).copyWith(
    brightness: .light,
    visualDensity: .adaptivePlatformDensity,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white, // 앱 바 배경 색상
      foregroundColor: Colors.black, // 앱 바 아이콘 색상
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF3B82F6), // 플로팅 액션 버튼 배경 색상
      foregroundColor: Colors.white, // 플로팅 액션 버튼 아이콘 색상
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Color(0xFF3B82F6), // 텍스트 색상
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, // 엘리베이트 버튼 텍스트 색상
        backgroundColor: const Color(0xFF3B82F6), // 엘리베이트 버튼 배경 색상
        padding: const .symmetric(
          vertical: 24,
        ),
        shape: RoundedRectangleBorder( // 엘리베이트 버튼 모양
          borderRadius: .circular(14),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationThemeData(
      filled: true,
      fillColor: Color(0xFFF9FAFB),
      prefixIconColor: Color(0xFF9CA3AF),
      hintStyle: const TextStyle(
        color: Color(0xFF9CA3AF),
      ),
      border: OutlineInputBorder(
        borderRadius: .circular(12),
        borderSide: .none,
      ),
    )
  );



  static ThemeData get dark => ThemeData.dark(
    useMaterial3: true,
  ).copyWith(
    brightness: .light,
    visualDensity: .adaptivePlatformDensity,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black, // 앱 바 배경 색상
      foregroundColor: Colors.white, // 앱 바 아이콘 색상
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF3B82F6), // 플로팅 액션 버튼 배경 색상
      foregroundColor: Colors.white, // 플로팅 액션 버튼 아이콘 색상
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Color(0xFF3B82F6), // 텍스트 색상
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, // 엘리베이트 버튼 텍스트 색상
        backgroundColor: const Color(0xFF3B82F6), // 엘리베이트 버튼 배경 색상
        padding: const .symmetric(
          vertical: 24,
        ),
        shape: RoundedRectangleBorder( // 엘리베이트 버튼 모양
          borderRadius: .circular(14),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationThemeData(
      filled: true,
      fillColor: Color(0xFFF9FAFB),
      prefixIconColor: Color(0xFF9CA3AF),
      hintStyle: const TextStyle(
        color: Color(0xFF9CA3AF),
      ),
      border: OutlineInputBorder(
        borderRadius: .circular(12),
        borderSide: .none,
      ),
    )
  );
}