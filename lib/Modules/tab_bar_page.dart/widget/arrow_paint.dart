import 'package:flutter/material.dart';

class ArrowPainter extends CustomPainter {
  final double arrowBottom;
  final double arrowTop;

  final Color color;
  final bool isFirst;
  final bool isLast;

  ArrowPainter({
    required this.color,
    this.isFirst = false,
    this.isLast = false,
    this.arrowBottom = 30,
    this.arrowTop = 35,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();

    if (isFirst) {
      // First container, plain from the left
      path.moveTo(0, 0);
      path.lineTo(size.width - arrowTop, 0);
      path.lineTo(size.width, size.height / 2);
      path.lineTo(size.width - arrowTop, size.height);
      path.lineTo(0, size.height);
    } else if (isLast) {
      // Last container, plain from the right
      path.moveTo(-arrowBottom, 0);
      path.lineTo(size.width, 0);
      path.lineTo(size.width, size.height);
      path.lineTo(-arrowBottom, size.height);
      path.lineTo(0, size.height / 2);
    } else {
      // Middle containers, adjusted arrow shape with 30 spacing
      path.moveTo(-arrowBottom, 0);
      path.lineTo(size.width - arrowTop, 0);
      path.lineTo(size.width, size.height / 2);
      path.lineTo(size.width - arrowTop, size.height);
      path.lineTo(-arrowBottom, size.height);
      path.lineTo(0, size.height / 2);
    }

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
