import 'package:flutter/material.dart';
import 'package:puntada/brand/Colors.dart';

extension BrandTheme on ThemeData {
  static ThemeData get appTheme => ThemeData(
      fontFamily: "Inter",
      primaryColor: BrandColors.primaryColor,
      backgroundColor: BrandColors.backgroundColor,
      scaffoldBackgroundColor: BrandColors.backgroundColor,
      inputDecorationTheme:
          InputDecorationTheme(focusColor: BrandColors.primaryColor),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              enableFeedback: true,
              backgroundColor: BrandColors.primaryColor)));
}
