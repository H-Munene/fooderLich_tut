import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooderLichTheme {
  
  static Color cardBackgroundColor = Colors.grey;
  static Color favorite = Colors.red;

  static ThemeData light() {
    return ThemeData(
      primaryColor: Colors.green,
        brightness: Brightness.light,
        checkboxTheme: CheckboxThemeData(
            fillColor: WidgetStateColor.resolveWith((states) => Colors.black)),
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.green,
        ),
        textTheme: lightTextTheme,
        scaffoldBackgroundColor: const Color.fromARGB(255, 249, 249, 249));
  }

  static ThemeData dark() {
    return ThemeData(
      primaryColor: Colors.green,
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[900],
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: darkTextTheme,
    );
  }

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: GoogleFonts.lexendExa(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineMedium: GoogleFonts.lexendExa(
      fontSize: 28.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headlineSmall: GoogleFonts.lexendExa(
      fontSize: 26.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    titleLarge: GoogleFonts.lexendExa(
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    bodyMedium: GoogleFonts.lexendExa(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    labelMedium: GoogleFonts.lexendExa(
      fontSize: 12.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: GoogleFonts.lexendExa(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headlineMedium: GoogleFonts.lexendExa(
      fontSize: 28.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    headlineSmall: GoogleFonts.lexendExa(
      fontSize: 26.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleLarge: GoogleFonts.lexendExa(
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    bodyMedium: GoogleFonts.lexendExa(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    labelMedium: GoogleFonts.lexendExa(
      fontSize: 12.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
  );
}
