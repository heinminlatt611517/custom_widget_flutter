import 'package:flutter/material.dart';

class DemoCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..strokeWidth = 2.0
      ..color = Colors.green
      ..style = PaintingStyle.fill;

    var circlePaint = Paint()
      ..strokeWidth = 2.0
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    canvas.drawRect(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2), radius: 88),
        paint);

    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 88, circlePaint);

    ///draw line
    canvas.drawLine(const Offset(0, 200), const Offset(50, 0), paint);
    canvas.drawLine(const Offset(50, 0), const Offset(250, 0), paint);
    canvas.drawLine(const Offset(250, 0), const Offset(250, 200), paint);
    canvas.drawLine(const Offset(250, 200), const Offset(0, 200), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
