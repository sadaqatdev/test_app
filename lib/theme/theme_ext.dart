import 'package:flutter/material.dart';

extension ThemeExt on BuildContext {
  TextStyle get titleStyle => Theme.of(this).textTheme.displayLarge!;
  TextStyle get labelStyle => Theme.of(this).textTheme.labelMedium!;
  TextStyle get bodyStyle => Theme.of(this).textTheme.bodyMedium!;
}
