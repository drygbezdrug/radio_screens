import 'package:flutter/material.dart';

class CustomProgressBar extends CustomPainter {
  const CustomProgressBar({
    required this.color,
  });
  final Color color;
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width * 0.9822792, size.height);
    path_0.lineTo(size.width * 0.005063292, size.height * 0.9375000);
    path_0.lineTo(0, 0);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color;
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
