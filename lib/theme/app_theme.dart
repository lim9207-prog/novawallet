import 'package:flutter/material.dart';

class AppTheme {
  // 브랜드 메인 컬러
  static const Color primaryColor = Color(0xFF111111);

  // 배경색
  static const Color backgroundColor = Colors.white;

  // 보조 텍스트 색상
  static const Color secondaryTextColor = Colors.grey;

  // 앱 전체 Theme
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,

      scaffoldBackgroundColor: backgroundColor,

      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          elevation: 0,
          minimumSize: const Size(double.infinity, 58),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),

      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontSize: 38,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),

        bodyLarge: TextStyle(
          fontSize: 17,
          color: Colors.grey,
        ),
      ),
    );
  }
}