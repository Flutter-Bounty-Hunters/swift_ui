import 'dart:ui';

import 'package:flutter/widgets.dart';

/// A widget that adds a shadow effect to its child widget.
///
/// Non-rectangular child shapes are supported. In addition to supplying a
/// child widget, you must also specify the radius of the shadow, which is a
/// measure of how fuzzy the edge of the shadow should be.
class Shadow extends StatelessWidget {
  const Shadow(
    this.child, {
    super.key,
    // In SwiftUI the default is `Color(.sRGBLinear, white: 0, opacity: 0.33)`
    this.color = const Color(0x54000000),
    required this.radius,
    this.x = 0,
    this.y = 0,
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
            Tint(
              color: color,
              Desaturate(child),
            ),
          ),
        ),
        child
      ],
    );
  }
}

/// A widget that applies a blur filter to its child widget.
///
///
class Blur extends StatelessWidget {
  const Blur(
    this.child, {
    super.key,
    this.sigmaX = 5.0,
    this.sigmaY = 5.0,
  });

  /// The widget to which the blur filter will be applied.
  final Widget child;

  /// The horizontal blur radius.
  ///
  /// The default is 5.0.
  final double sigmaX;

  /// The vertical blur radius.
  ///
  /// The default is 5.0.
  final double sigmaY;

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

/// A widget that applies a color filter to its child widget.
///
/// You must specify a color.
class Tint extends StatelessWidget {
  const Tint(
    this.child, {
    super.key,
    required this.color,
  });

  /// The widget to which the color filter will be applied.
  final Widget child;

  /// The color to which the child will be tinted.
  final Color color;

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

/// A widget that removes the RGB saturation of its child widget.
class Desaturate extends StatelessWidget {
  const Desaturate(
    this.child, {
    super.key,
  });

  final Widget child;

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
