import 'package:flutter/material.dart';

import '../constants/colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: KColors.primary,
    scaffoldBackgroundColor: KColors.background,
    appBarTheme: AppBarTheme(
      color: KColors.lightPrimary,
      iconTheme: IconThemeData(color: KColors.onSurface),
    ),
    colorScheme: ColorScheme.light(
      primary: KColors.lightPrimary,
      secondary: KColors.primaryDark,
      surface: KColors.surface,
      onSurface: KColors.onSurface,
    ),
    cardColor: KColors.surface,
    iconTheme: const IconThemeData(color: KColors.lightPrimary),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: KColors.onBackground),
      bodyMedium: TextStyle(color: KColors.onBackground),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: KColors.primary,
    scaffoldBackgroundColor: KColors.background,
    appBarTheme: AppBarTheme(
      color: KColors.darkSurface,
      iconTheme: IconThemeData(color: KColors.onSurface),
    ),
    colorScheme: ColorScheme.dark(
      primary: KColors.darkPrimary,
      secondary: KColors.primary.shade300,
      surface: KColors.surface,
      onSurface: KColors.onSurface,
    ),
    cardColor: KColors.surface,
    iconTheme: IconThemeData(color: KColors.darkPrimary),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: KColors.onBackground),
      bodyMedium: TextStyle(color: KColors.onBackground),
    ),
  );

  static ThemeData getTheme(bool isDarkMode) {
    KColors.setTheme(isDarkMode);
    return isDarkMode ? darkTheme : lightTheme;
  }
}
