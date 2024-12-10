import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HackerTheme {
  // Primary color palette inspired by hacker/cyberpunk aesthetics
  static const Color _primaryColor =
      Color(0xFF00FF00); // Bright green (classic terminal)
  static const Color _backgroundColor = Color(0xFF0A0A0A); // Deep black
  static const Color _accentColor = Color(0xFF00FFFF); // Cyan
  static const Color _errorColor = Color(0xFFFF0000); // Bright red
  static const Color _surfaceColor = Color(0xFF1A1A1A); // Dark gray surface

  // Create the dark theme
  static ThemeData get darkTheme {
    return ThemeData(
      // Base theme settings
      brightness: Brightness.dark,
      primaryColor: _primaryColor,
      scaffoldBackgroundColor: _backgroundColor,

      // Color scheme
      colorScheme: const ColorScheme.dark(
        primary: _primaryColor,
        secondary: _accentColor,
        background: _backgroundColor,
        surface: _surfaceColor,
        error: _errorColor,
      ),

      // Typography
      textTheme: TextTheme(
        // Terminal-style text
        displayLarge: GoogleFonts.robotoMono(
          color: _primaryColor,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: GoogleFonts.robotoMono(
          color: _primaryColor.withOpacity(0.8),
          fontSize: 16,
        ),
        bodyMedium: GoogleFonts.robotoMono(
          color: _primaryColor.withOpacity(0.7),
          fontSize: 14,
        ),
      ),

      // App Bar Theme
      appBarTheme: AppBarTheme(
        color: _backgroundColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: _primaryColor),
        titleTextStyle: GoogleFonts.robotoMono(
          color: _primaryColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),

      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        fillColor: _surfaceColor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: _accentColor.withOpacity(0.5)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: _accentColor.withOpacity(0.3)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: _accentColor, width: 2),
        ),
        labelStyle:
            GoogleFonts.robotoMono(color: _primaryColor.withOpacity(0.7)),
      ),

      // Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: _backgroundColor,
          backgroundColor: _primaryColor,
          textStyle: GoogleFonts.robotoMono(
            color: _backgroundColor,
            fontWeight: FontWeight.bold,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),

      // Card Theme
      cardTheme: CardTheme(
        color: _surfaceColor,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: _accentColor.withOpacity(0.2)),
        ),
      ),

      // Floating Action Button Theme
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _primaryColor,
        foregroundColor: _backgroundColor,
      ),
    );
  }

  // Custom Glow Effect
  static BoxShadow hackerGlow(Color color) {
    return BoxShadow(
      color: color.withOpacity(0.5),
      spreadRadius: 2,
      blurRadius: 15,
      offset: const Offset(0, 0),
    );
  }

  // Terminal-like Decoration for Containers
  static BoxDecoration terminalDecoration() {
    return BoxDecoration(
      color: _surfaceColor,
      border: Border.all(color: _primaryColor.withOpacity(0.3), width: 1),
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        hackerGlow(_primaryColor),
      ],
    );
  }
}

// Example Usage in Main App
