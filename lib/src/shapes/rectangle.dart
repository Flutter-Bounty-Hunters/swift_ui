import 'package:flutter/widgets.dart';

/// A rectangular shape that takes the size of the parent
class Rectangle extends StatelessWidget {
  const Rectangle({
    super.key,
    this.fillColor,
    this.fillGradient,
    this.strokeColor,
    this.strokeGradient,
    this.strokeLineWidth = 1.0,
  });

  /// A color used for painting the interior of the rectangle.
  ///
  /// This is an alternative to [fillGradient].
  final Color? fillColor;

  /// A gradient used for painting the interior of the rectangle.
  ///
  /// This is an alternative to [fillColor].
  final Gradient? fillGradient;

  /// A color used for painting the outline of the rectangle.
  ///
  /// The stroke line is drawn inside the frame of the rectangle, and its
  /// width is determined by [strokeLineWidth].
  ///
  /// This is an alternative to [strokeGradient].
  final Color? strokeColor;

  /// A gradient used for painting the outline of the rectangle.
  ///
  /// The stroke line is drawn inside the frame of the rectangle, and its
  /// width is determined by [strokeLineWidth].
  ///
  /// This is an alternative to [strokeColor].
  final Gradient? strokeGradient;

  /// The width of the stroke used to paint the outline of the rectangle.
  ///
  /// The default is 1.0.
  final double strokeLineWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: CustomPaint(
        painter: _RectanglePainter(
          fillColor: fillColor,
          fillGradient: fillGradient,
          strokeColor: strokeColor,
          strokeGradient: strokeGradient,
          strokeLineWidth: strokeLineWidth,
        ),
      ),
    );
  }
}

class _RectanglePainter extends CustomPainter {
  _RectanglePainter({
    required this.fillColor,
    required this.fillGradient,
    required this.strokeColor,
    required this.strokeGradient,
    required this.strokeLineWidth,
  });

  final Color? fillColor;
  final Gradient? fillGradient;
  final Color? strokeColor;
  final Gradient? strokeGradient;
  final double strokeLineWidth;

  @override
  void paint(Canvas canvas, Size size) {
    _paintFill(canvas, size, fillColor, fillGradient);
    _paintStroke(canvas, size, strokeColor, strokeGradient, strokeLineWidth);
  }

  void _paintFill(Canvas canvas, Size size, Color? color, Gradient? gradient) {
    if (color != null) {
      _paintSolidFill(canvas, size, color);
    } else if (gradient != null) {
      _paintGradientFill(canvas, size, gradient);
    }
  }

  void _paintSolidFill(Canvas canvas, Size size, Color color) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = color;
    canvas.drawRect(rect, paint);
  }

  void _paintGradientFill(Canvas canvas, Size size, Gradient gradient) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..shader = gradient.createShader(rect);
    canvas.drawRect(rect, paint);
  }

  void _paintStroke(
    Canvas canvas,
    Size size,
    Color? color,
    Gradient? gradient,
    double lineWidth,
  ) {
    final rect = Rect.fromLTWH(
      lineWidth / 2,
      lineWidth / 2,
      size.width - lineWidth,
      size.height - lineWidth,
    );
    if (color != null) {
      _paintSolidStroke(canvas, rect, color, lineWidth);
    } else if (gradient != null) {
      _paintGradientStroke(canvas, rect, gradient, lineWidth);
    }
  }

  void _paintSolidStroke(
    Canvas canvas,
    Rect rect,
    Color color,
    double lineWidth,
  ) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = color
      ..strokeWidth = lineWidth;
    canvas.drawRect(rect, paint);
  }

  void _paintGradientStroke(
    Canvas canvas,
    Rect rect,
    Gradient gradient,
    double lineWidth,
  ) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..shader = gradient.createShader(rect)
      ..strokeWidth = lineWidth;
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant _RectanglePainter oldDelegate) {
    return oldDelegate.fillColor != fillColor ||
        oldDelegate.fillGradient != fillGradient ||
        oldDelegate.strokeColor != strokeColor ||
        oldDelegate.strokeGradient != strokeGradient ||
        oldDelegate.strokeLineWidth != strokeLineWidth;
  }
}
