import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      brightness: Brightness.light,
      surface: Color(0xffffffff),
      primary: Color(0xFF474747),
      onPrimaryContainer: Color(0xFFF0EBEB),
      secondary: Color(0xFF232323),
      onSecondary: Color(0xFF000000),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF474747),
      iconTheme: IconThemeData(
        color: Color(0xffffffff),
      ),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
          fontSize: 20, 
          fontWeight: FontWeight.w600,
           color: Colors.white),
      headlineMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: Color(0xffffffff),
      ),
      headlineSmall: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w800,
        color: Color(0xFF474747),
      ),
      bodySmall: TextStyle(
        fontSize: 13,
        color: Color(0xFFA8A8A8),
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
          fontSize: 14,
          color: Color(0xFF474747),
          fontWeight: FontWeight.w600,
       ),
       labelSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: Color(0xFF474747),
       ),
       labelMedium:  TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w700,
        color: Color(0xffffffff),
       ),
       titleLarge:  TextStyle(
          fontSize: 14,
          color: Color(0xFF474747),
          fontWeight: FontWeight.w600,
          backgroundColor: Colors.white
       ),
    ),
  );
}
