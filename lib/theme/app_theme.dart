import 'package:flutter/material.dart';
import 'package:streamedinc/theme/colors.dart';

ThemeData appTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
  useMaterial3: true,
  fontFamily: "Urbanist",
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 24,
      overflow: TextOverflow.ellipsis,
      fontWeight: FontWeight.w700,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      overflow: TextOverflow.ellipsis,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      overflow: TextOverflow.ellipsis,
      fontWeight: FontWeight.w400,
    ),
  ).apply(
      bodyColor: Colors.white,
      displayColor: Colors.white,
      decorationColor: Colors.white),
);
