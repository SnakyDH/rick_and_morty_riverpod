import 'package:flutter/material.dart';
import 'package:rick_and_morty_riverpod/core/theme/rm_colors.dart';

final rmTheme = ThemeData(
  scaffoldBackgroundColor: RmColors.primary,
  textTheme: TextTheme(
    bodyLarge: TextStyle(
      color: RmColors.white,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      color: RmColors.white,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      color: RmColors.white,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    titleLarge: TextStyle(
      color: RmColors.white,
      fontSize: 24,
      fontWeight: FontWeight.w400,
    ),
    titleMedium: TextStyle(color: RmColors.white, fontSize: 20),
    titleSmall: TextStyle(color: RmColors.white, fontSize: 18),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: RmColors.primary,
    titleTextStyle: TextStyle(color: RmColors.white, fontSize: 20),
  ),
  tabBarTheme: TabBarThemeData(
    indicator: BoxDecoration(
      color: RmColors.secondary,
      borderRadius: BorderRadius.circular(10),
    ),
    dividerColor: Colors.transparent,
  ),
);
