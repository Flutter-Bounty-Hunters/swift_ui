import 'dart:ui';

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
    return Stack(
      children: [
        Transform.translate(
          offset: Offset(x, y),
          child: Blur(
            sigmaX: radius,
            sigmaY: radius,
            child: Tint(
              color: color,
              child: Desaturate(
                child: child,
              ),
            ),
          ),
        ),
        child
      ],
    );
  }
}

class Blur extends StatelessWidget {
  final Widget child;
  final double sigmaX;
  final double sigmaY;

  const Blur({
    super.key,
    required this.child,
    this.sigmaX = 5.0,
    this.sigmaY = 5.0,
  });

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(
        sigmaX: sigmaX,
        sigmaY: sigmaY,
        tileMode: TileMode.decal,
      ),
      child: child,
    );
  }
}

class Tint extends StatelessWidget {
  final Widget child;
  final Color color;

  const Tint({
    super.key,
    required this.child,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        color,
        BlendMode.modulate,
      ),
      child: child,
    );
  }
}

class Desaturate extends StatelessWidget {
  final Widget child;

  const Desaturate({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    const whiteFilter = ColorFilter.matrix(<double>[
      1, 1, 1, 0, 0, //
      1, 1, 1, 0, 0, //
      1, 1, 1, 0, 0, //
      0, 0, 0, 1, 0, //
    ]);
    return ColorFiltered(
      colorFilter: whiteFilter,
      child: child,
    );
  }
}
