import 'package:flutter/widgets.dart';
import 'package:swift_ui/src/shapes/shape_style.dart';

/// A rectangular shape that takes the size of the parent
class Rectangle extends StatelessWidget {
  const Rectangle({
    super.key,
    this.fill,
    this.stroke,
    this.strokeLineWidth = 1.0,
  });

  /// A color or gradient used for painting the interior of the rectangle.
  final ShapeStyle? fill;

  /// A color or gradient used for painting the outline of the rectangle.
  ///
  /// The stroke line is drawn inside the frame of the rectangle, and its
  /// width is determined by [strokeLineWidth].
  final ShapeStyle? stroke;

  /// The width of the stroke used to paint the outline of the rectangle.
  ///
  /// The default is 1.0.
  final double strokeLineWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: CustomPaint(
        painter: _RectanglePainter(
          fill: fill,
          stroke: stroke,
          strokeLineWidth: strokeLineWidth,
        ),
      ),
    );
  }
}

class _RectanglePainter extends CustomPainter {
  _RectanglePainter({
    required this.fill,
    required this.stroke,
    required this.strokeLineWidth,
  });

  final ShapeStyle? fill;
  final ShapeStyle? stroke;
  final double strokeLineWidth;

  @override
  void paint(Canvas canvas, Size size) {
    _paintFill(canvas, size, fill);
    _paintStroke(canvas, size, stroke, strokeLineWidth);
  }

  void _paintFill(Canvas canvas, Size size, ShapeStyle? fillStyle) {
    if (fillStyle == null) {
      return;
    }
    if (fillStyle.color != null) {
      _paintSolidFill(canvas, size, fillStyle);
    } else {
      _paintGradientFill(canvas, size, fillStyle);
    }
  }

  void _paintSolidFill(Canvas canvas, Size size, ShapeStyle fillStyle) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final fillPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = fillStyle.color ?? const Color(0x00000000);
    canvas.drawRect(rect, fillPaint);
  }

  void _paintGradientFill(Canvas canvas, Size size, ShapeStyle fillStyle) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final fillPaint = Paint()
      ..style = PaintingStyle.fill
      ..shader = fillStyle.gradient?.createShader(rect);
    canvas.drawRect(rect, fillPaint);
  }

  void _paintStroke(
    Canvas canvas,
    Size size,
    ShapeStyle? strokeStyle,
    double lineWidth,
  ) {
    if (strokeStyle == null) {
      return;
    }
    final rect = Rect.fromLTWH(
      lineWidth / 2,
      lineWidth / 2,
      size.width - lineWidth,
      size.height - lineWidth,
    );
    if (strokeStyle.color != null) {
      _paintSolidStroke(canvas, rect, strokeStyle.color!, lineWidth);
    } else if (strokeStyle.gradient != null) {
      _paintGradientStroke(canvas, rect, strokeStyle.gradient!, lineWidth);
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
    return oldDelegate.fill != fill ||
        oldDelegate.stroke != stroke ||
        oldDelegate.strokeLineWidth != strokeLineWidth;
  }
}
