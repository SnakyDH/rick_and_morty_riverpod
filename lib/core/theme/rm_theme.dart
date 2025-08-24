import 'package:flutter/material.dart';
import 'package:rick_and_morty_riverpod/core/theme/rm_colors.dart';

final rmTheme = ThemeData(
  scaffoldBackgroundColor: RmColors.primary,
  appBarTheme: AppBarTheme(
    backgroundColor: RmColors.primary,
    titleTextStyle: TextStyle(color: RmColors.white, fontSize: 20),
  ),
);
