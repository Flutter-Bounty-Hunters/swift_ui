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

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ShapeStyle &&
        other.color == color &&
        other.gradient == gradient;
  }

  @override
  int get hashCode => Object.hash(color, gradient);
}
