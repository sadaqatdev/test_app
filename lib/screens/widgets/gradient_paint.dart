import 'package:flutter/material.dart';

class GradientBorderPainter extends CustomPainter {
  final Gradient gradient;
  final double strokeWidth;

  GradientBorderPainter({
    required this.gradient,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader =
          gradient.createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..strokeWidth = strokeWidth;

    canvas.drawPath(
        Path()..addRect(Rect.fromLTWH(0, 0, size.width, size.height)), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
