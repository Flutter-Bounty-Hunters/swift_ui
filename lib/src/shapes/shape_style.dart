import 'package:flutter/painting.dart';

/// A color or pattern used for painting a shape.
class ShapeStyle {
  const ShapeStyle({
    this.color,
    this.gradient,
  });

  /// A solid color used for painting a shape.
  final Color? color;

  /// A gradient used for painting a shape.
  final Gradient? gradient;
}
