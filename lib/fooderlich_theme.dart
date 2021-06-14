import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooderlichTheme {
  static TextTheme lightTextTheme = TextTheme(
    // 1
    bodyText1: GoogleFonts.openSans(
        fontSize: 14, fontWeight: FontWeight.w700, color: Colors.black),
    headline1: GoogleFonts.openSans(
        fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
    headline2: GoogleFonts.openSans(
        fontSize: 21, fontWeight: FontWeight.w700, color: Colors.black),
    headline3: GoogleFonts.openSans(
        fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
    headline6: GoogleFonts.openSans(
        fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
  );

  static TextTheme darkTextTheme = TextTheme(
    // 2
    bodyText1: GoogleFonts.openSans(
        fontSize: 14, fontWeight: FontWeight.w700, color: Colors.white),
    headline1: GoogleFonts.openSans(
        fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
    headline2: GoogleFonts.openSans(
        fontSize: 21, fontWeight: FontWeight.w700, color: Colors.white),
    headline3: GoogleFonts.openSans(
        fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
    headline6: GoogleFonts.openSans(
        fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
  );

  // 3
  static ThemeData light() {
    final themeData = ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.white,
      textSelectionTheme:
          const TextSelectionThemeData(selectionColor: Colors.green),
      textTheme: lightTextTheme,
    );
    return themeData.copyWith(
      colorScheme: themeData.colorScheme.copyWith(secondary: Colors.black),
    );
  }

  // 4
  static ThemeData dark() {
    final themeData = ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.grey[900],
      textTheme: darkTextTheme,
    );
    return themeData.copyWith(
      colorScheme: themeData.colorScheme.copyWith(secondary: Colors.green[600]),
    );
  }
}
