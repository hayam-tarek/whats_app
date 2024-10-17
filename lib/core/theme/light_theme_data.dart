import 'package:flutter/material.dart';
import 'package:whats_app/core/constants/asset_fonts.dart';
import 'package:whats_app/core/theme/colors.dart';

class LightThemeData {
  static ThemeData getThemeData() {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.whiteColor,
      fontFamily: AssetFonts.primaryFont,
      useMaterial3: false,
      // textTheme: GoogleFonts.interTextTheme(),
      // colorScheme: const ColorScheme.light(
      //   brightness: Brightness.light,
      //   primary: AppColors.primaryColor,
      //   secondary: AppColors.secondaryLightColor,
      //   tertiary: AppColors.tertiaryLightColor,
      // ),
      colorSchemeSeed: AppColors.primaryColor,
    );
  }
}
