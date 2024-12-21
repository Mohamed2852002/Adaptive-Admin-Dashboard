import 'package:adaptive_admin_dashboard/themes/app_colors.dart';
import 'package:adaptive_admin_dashboard/utils/constants.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final appTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: AppColors.primary,
      ),
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.transparent,
    ),
    scaffoldBackgroundColor: const Color(0xffF7F9FA),
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      primary: AppColors.primary,
    ),
    fontFamily: kAppFont,
  );
}
