import 'package:flutter/material.dart';
import 'package:my_app/core/constant/colors.dart';

ThemeData darkTheme = ThemeData(
  fontFamily: 'Cairo',
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black,
  buttonTheme: ButtonThemeData(
    buttonColor: AppColors.primaryColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
  ),

  colorScheme: ColorScheme.fromSeed(
    primary: AppColors.primaryColor,
    seedColor: AppColors.primaryColor,
    secondary: AppColors.secondaryColor,
    brightness: Brightness.dark,
  ),
);
