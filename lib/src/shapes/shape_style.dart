import 'package:flutter/painting.dart';

/// A color or pattern used for painting a shape.
class ShapeStyle {
  // Can't make color an optional positional parameter
  // https://github.com/dart-lang/language/issues/1076
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
