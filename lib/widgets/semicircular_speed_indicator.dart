import 'dart:math';

import 'package:flutter/material.dart';

class SemiCircleSpeedIndicator extends StatefulWidget {
  const SemiCircleSpeedIndicator({super.key});

  @override
  State<SemiCircleSpeedIndicator> createState() =>
      _SemiCircleSpeedIndicatorState();
}

class _SemiCircleSpeedIndicatorState extends State<SemiCircleSpeedIndicator> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: 250,
      // color: const Color(0xFF2D2F21),
      child: CustomPaint(
        painter: ShapePainter(),
      ),
    );
  }
}

class ShapePainter extends CustomPainter {
  double _degreeToRadians(num degree) {
    return (degree * pi) / 180.0;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var centerx = size.width / 2;
    var centery = size.height / 2;
    var center = Offset(centerx, centery);
    var radius = min(centerx, centery);
    var drawArc = Paint()
      ..color = const Color(0xffC5405A)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;
    var drawWhiteArc = Paint()
      ..color = const Color(0xffE8ADAD)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;
    var drarCircle = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xffC5405A);
    var drawpinkCircle = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5
      ..color = const Color(0xffffffff);
    canvas.drawCircle(Offset(centerx + 50, 14), 10, drarCircle);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
        _degreeToRadians(0), _degreeToRadians(-180), false, drawArc);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2.93,
        _degreeToRadians(64), false, drawWhiteArc);

    canvas.drawCircle(Offset(centerx + 50, 14), 12, drawpinkCircle);
  }

  @override
  bool shouldRepaint(ShapePainter oldDelegate) => false;
}
