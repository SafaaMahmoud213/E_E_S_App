import 'package:flutter/material.dart';
import 'package:my_app/core/constant/colors.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: 'Cairo',
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  buttonTheme: ButtonThemeData(
    buttonColor: AppColors.primaryColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primaryColor,
    primary: AppColors.primaryColor,
    secondary: AppColors.secondaryColor,
    brightness: Brightness.light,
  ),
);
