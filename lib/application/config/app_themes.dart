import 'package:flutter/material.dart';
import 'package:repo_rover/application/shared/resources/app_colors.dart';

class AppThemes {
  static final ThemeData light = ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.white,
      colorScheme: const ColorScheme.light(
          primary: AppColors.lavenderPurple,
          secondary: AppColors.vividOrange,
          error: Colors.red,
          onSecondary: AppColors.white,
          background: AppColors.white,
          shadow: AppColors.charcoalGray),
      shadowColor: AppColors.charcoalGray,
      cardColor: AppColors.white,
      useMaterial3: false,
      primaryColor: AppColors.lavenderPurple,
      appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.vividOrange,
          iconTheme: IconThemeData(color: AppColors.white),
          elevation: 3,
          shadowColor: AppColors.charcoalGray,
          centerTitle: true,
          actionsIconTheme: IconThemeData(color: AppColors.white)));
}