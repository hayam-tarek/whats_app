import 'package:flutter/material.dart';
import 'package:whats_app/core/constants/asset_fonts.dart';
import 'package:whats_app/core/theme/colors.dart';

class DarkThemeData {
  static ThemeData getThemeData() {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.blackColor,
      fontFamily: AssetFonts.primaryFont,
      useMaterial3: false,
      // textTheme: GoogleFonts.interTextTheme(),
      colorScheme: const ColorScheme.dark(
        brightness: Brightness.dark,
        primary: AppColors.primaryColor,
        secondary: AppColors.secondaryDarkColor,
        tertiary: AppColors.tertiaryDarkColor,
      ),
      // colorSchemeSeed: AppColors.primaryColor,
    );
  }
}
