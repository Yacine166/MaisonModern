// ignore: file_names
import 'package:flutter/material.dart';
import 'package:maison_moderne/core/constant/color.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "Roboto",
  colorScheme: ColorScheme.fromSeed(seedColor: AppColor.colorGreen),
  textTheme: const TextTheme(
    //title
    displayLarge: TextStyle(
      color: Colors.black,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
    //body text
    bodyLarge: TextStyle(
      fontWeight: FontWeight.w500,
      height: 2,
      fontSize: 18,
      color: AppColor.textGrey,
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeight.w600,
      height: 2,
      fontSize: 20,
      color: Colors.black,
    ),
    //button
    labelLarge: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
);

// Arbic
ThemeData themeArabic = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: AppColor.colorGreen),
  fontFamily: "Amiri",
  textTheme: const TextTheme(
    //title
    displayLarge: TextStyle(
      color: Colors.black,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
    //body text
    bodyLarge: TextStyle(
      fontWeight: FontWeight.w500,
      height: 2,
      fontSize: 18,
      color: AppColor.textGrey,
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeight.w600,
      height: 2,
      fontSize: 20,
      color: Colors.black,
    ),
    //button
    labelLarge: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
);
