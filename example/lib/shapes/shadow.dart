import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:swift_ui/swift_ui.dart';

class ShadowDemo extends StatelessWidget {
  const ShadowDemo({
    super.key,
  });

  static const color = Colors.grey;
  static const radius = 10.0;
  static const x = 10.0;
  static const y = 10.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const VStack(
        [
          // Rectangle with shadow
          Frame(
            width: 200,
            height: 100,
            child: Shadow(
              color: color,
              radius: radius,
              x: x,
              y: y,
              child: Rectangle(
                fillColor: Colors.purple,
              ),
            ),
          ),

          // Ellipse with shadow
          Frame(
            width: 200,
            height: 100,
            child: Shadow(
              color: color,
              radius: radius,
              x: x,
              y: y,
              child: Ellipse(
                fillColor: Colors.yellow,
              ),
            ),
          ),

          // Star with shadow
          Frame(
            width: 200,
            height: 200,
            child: Shadow(
              color: color,
              radius: radius,
              x: x,
              y: y,
              child: Star(
                points: 5,
                strokeLineWidth: 5,
                strokeColor: Colors.blue,
              ),
            ),
          ),

          // stroked ellipse
          Frame(
            width: 200,
            height: 100,
            child: Shadow(
              color: color,
              radius: radius,
              x: x,
              y: y,
              child: Ellipse(
                strokeColor: Colors.red,
                strokeLineWidth: 5,
              ),
            ),
          ),
        ],
        spacing: 20,
      ),
    );
  }
}

class Star extends StatelessWidget {
  final int points;
  final double strokeLineWidth;
  final Color strokeColor;

  const Star({
    super.key,
    required this.points,
    required this.strokeLineWidth,
    required this.strokeColor,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.infinite,
      painter: _StarPainter(
        points: points,
        strokeLineWidth: strokeLineWidth,
        strokeColor: strokeColor,
      ),
    );
  }
}

class _StarPainter extends CustomPainter {
  final int points;
  final double strokeLineWidth;
  final Color strokeColor;

  _StarPainter({
    required this.points,
    required this.strokeLineWidth,
    required this.strokeColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    const starExtrusion = 0.5;
    final angle = pi / points;
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width, size.height) / 2;

    for (int i = 0; i < 2 * points; i++) {
      final rotation = i * angle;
      final position = Offset(
        center.dx + cos(rotation) * radius * (i % 2 == 0 ? 1 : starExtrusion),
        center.dy + sin(rotation) * radius * (i % 2 == 0 ? 1 : starExtrusion),
      );

      if (i == 0) {
        path.moveTo(position.dx, position.dy);
      } else {
        path.lineTo(position.dx, position.dy);
      }
    }

    path.close();

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = strokeColor
      ..strokeWidth = strokeLineWidth;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_StarPainter oldDelegate) =>
      oldDelegate.points != points ||
      oldDelegate.strokeLineWidth != strokeLineWidth ||
      oldDelegate.strokeColor != strokeColor;
}
