import 'package:flutter/material.dart';

class KColors {
  // Common colors
  static const primary = Colors.deepPurple;
  static const grey = Color(0xffb4c9de);
  static const success = Color(0xff02a499);
  static const danger = Color(0xffec4561);
  static const warning = Color(0xfff8b425);
  static const info = Color(0xff38a4f8);

  // Light theme colors
  static const lightPrimary = primary;
  static final lightBackground = primary.shade50;
  static const lightSurface = Colors.white;
  static const lightOnBackground = Colors.black87;
  static const lightOnSurface = Colors.black87;

  // Dark theme colors
  static final darkPrimary = primary.shade200;
  static const darkBackground = Color.fromRGBO(49, 27, 146, 1);
  static const darkSurface = Color(0xFF1F1F1F);
  static const darkOnBackground = Colors.white70;
  static const darkOnSurface = Colors.white70;

  // Functional colors
  static final primaryDark = primary.shade700;
  static const secondary = Color(0xff333547);
  static const secondaryLight = Color(0xff383b4e);
  static const secondaryDark = Color(0xff292b38);

  static Color background = lightBackground;
  static Color surface = lightSurface;
  static Color onBackground = lightOnBackground;
  static Color onSurface = lightOnSurface;

  static void setTheme(bool isDarkMode) {
    background = isDarkMode ? darkBackground : lightBackground;
    surface = isDarkMode ? darkSurface : lightSurface;
    onBackground = isDarkMode ? darkOnBackground : lightOnBackground;
    onSurface = isDarkMode ? darkOnSurface : lightOnSurface;
  }
}
