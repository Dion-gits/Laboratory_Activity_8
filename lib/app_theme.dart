import 'package:flutter/material.dart';

abstract final class AppColors {
  static const bottleGreen = Color(0xFF0F372B);
  static const bone = Color(0xFFEFE7DA);
  static const vermilion = Color(0xFFE8392B);
  static const ink = Color(0xFF20251F);
}

ThemeData buildAppTheme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.bottleGreen,
      primary: AppColors.bottleGreen,
      secondary: AppColors.vermilion,
      surface: AppColors.bone,
      onSurface: AppColors.ink,
      brightness: Brightness.light,
    ),
    scaffoldBackgroundColor: AppColors.bone,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.bottleGreen,
      foregroundColor: AppColors.bone,
      centerTitle: false,
      elevation: 0,
    ),
    cardTheme: CardThemeData(
      color: const Color(0xFFF8F4EC),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: const BorderSide(color: Color(0x1A0F372B)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFFF8F4EC),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0x550F372B)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.vermilion, width: 2),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.vermilion,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
    useMaterial3: true,
  );
}
