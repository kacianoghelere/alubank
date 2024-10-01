import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

ThemeData myTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: ThemeColors.primary,
  ),
  primaryColor: ThemeColors.primary,
  primarySwatch: ThemeColors.primary,
  scaffoldBackgroundColor: ThemeColors.scaffoldBackground,
  fontFamily: 'Raleway',
  textTheme: const TextTheme(
    bodyMedium: TextStyle(fontSize: 16),
    bodyLarge: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.bold
    ),
  )
);