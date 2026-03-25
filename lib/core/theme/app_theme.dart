import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // الثيم الفاتح
  static final light = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, brightness: Brightness.light),
    scaffoldBackgroundColor: Colors.grey[50],
    useMaterial3: true,
    fontFamily: GoogleFonts.cairo().fontFamily,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.white, elevation: 0, iconTheme: IconThemeData(color: Colors.deepPurple)),
  );

  // الثيم الليلي
  static final dark = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, brightness: Brightness.dark),
    scaffoldBackgroundColor: const Color(0xFF121212), // لون أسود هادي
    useMaterial3: true,
    fontFamily: GoogleFonts.cairo().fontFamily,
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF1E1E1E), elevation: 0, iconTheme: IconThemeData(color: Colors.white)),
    cardColor: const Color(0xFF1E1E1E),
  );
}
