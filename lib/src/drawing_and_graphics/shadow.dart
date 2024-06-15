import 'package:flutter/widgets.dart';

/// A widget that adds a shadow effect to its child widget.
class Shadow extends StatelessWidget {
  /// Creates a Shadow widget with the given properties.
  ///
  /// Use the [radius] to set the amount of blur, where `0.0` is sharp and a higher
  /// value is more fuzzy. You can also set the shadow [color] and ([x], [y]) offset.
  const Shadow({
    super.key,
    // In SwiftUI the default is `Color(.sRGBLinear, white: 0, opacity: 0.33)`
    this.color = const Color(0x54000000),
    required this.radius,
    this.x = 0,
    this.y = 0,
    required this.child,
  });

  /// The color of the shadow.
  final Color color;

  /// The blur radius of the shadow.
  ///
  /// `0.0` is sharp while higher values are more fuzzy.
  final double radius;

  /// The horizontal offset of the shadow.
  final double x;

  /// The vertical offset of the shadow.
  final double y;

  /// The widget to which the shadow effect will be applied.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: color,
            spreadRadius: radius,
            blurRadius: radius,
            offset: Offset(x, y),
          ),
        ],
      ),
      child: child,
    );
  }
}
