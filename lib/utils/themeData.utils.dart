import 'package:flutter/material.dart';
import 'package:list_of_companies/utils/colors.utils.dart';
import 'package:list_of_companies/utils/utils.dart';

///Custom theme light to MaterialApp
ThemeData themeDataLighCustom() {
  final theme = ThemeData();

  return theme.copyWith(
    colorScheme: theme.colorScheme.copyWith(
      primary: IoasysColors.primaryColor,
      secondary: IoasysColors.accentColor,
      error: IoasysColors.error,
      background: IoasysColors.background,
    ),
  );
}

ThemeData themeDataDarkCustom() {
  final theme = ThemeData();

  return theme.copyWith(
    colorScheme: theme.colorScheme.copyWith(
      primary: IoasysColorsDark.primaryColor,
      secondary: IoasysColorsDark.accentColor,
      error: IoasysColorsDark.error,
      background: IoasysColorsDark.background,
    ),
  );
}
