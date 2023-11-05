import 'package:flutter/material.dart';
import 'package:streamedinc/theme/theme_ext.dart';

extension Btx on BuildContext {
  showSnackBar({required String msg}) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
        content: Text(
      msg,
      style: labelStyle,
    )));
  }
}
