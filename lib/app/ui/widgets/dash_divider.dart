import 'package:flutter/material.dart';

import '../../../config/constant/color_constant.dart';

class DashedLineDivider extends StatelessWidget {
  final double width;

  const DashedLineDivider({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, 1), // Adjust the width based on the parent constraints
      painter: _DashedLinePainter(),
    );
  }
}

class _DashedLinePainter extends CustomPainter {
  final double dashWidth;
  final double dashSpace;
  final Paint paints;

  _DashedLinePainter({
    // ignore: unused_element
    this.dashWidth = 5,
    // ignore: unused_element
    this.dashSpace = 3,
    Color color = kSecondaryColor,
  }) : paints = Paint()
          ..color = color
          ..strokeWidth = 1
          ..style = PaintingStyle.stroke;

  @override
  void paint(Canvas canvas, Size size) {
    double startX = 0;
    final double y = size.height / 2;

    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, y),
        Offset(startX + dashWidth, y),
        paints,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
