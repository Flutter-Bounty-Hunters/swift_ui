import 'dart:ui';

import 'package:flutter/widgets.dart';

/// A widget that adds a shadow effect to its child widget.
///
/// Non-rectangular child shapes or images that include alpha regions are
/// supported. The shadow will follow the visible portions of the child widget
/// rather than the rectangular size of the widget.
///
/// In addition to supplying a child widget, you must also specify the radius of
/// the shadow, which is a measure of how fuzzy the edge of the shadow should be.
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
          child: _Blur(
            sigmaX: radius,
            sigmaY: radius,
            _Tint(
              color: color,
              _Desaturate(
                child,
                // The Desaturate widget removes all transparency from the
                // whatever color the child widget is so that the shadow
                // opacity is independent of the widget opacity.
                // However, this also removes the effects of antialiasing, which
                // makes the border look jagged if there is no blur radius. So
                // we retain the alpha for that edge case.
                retainAlpha: radius == 0.0,
              ),
            ),
          ),
        ),
        child
      ],
    );
  }
}

/// A widget that applies a blur filter to its child widget.
class _Blur extends StatelessWidget {
  const _Blur(
    this.child, {
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
class _Tint extends StatelessWidget {
  const _Tint(
    this.child, {
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
class _Desaturate extends StatelessWidget {
  const _Desaturate(
    this.child, {
    required this.retainAlpha,
  });

  final Widget child;

  /// Whether to retain the alpha channel of the child widget when desaturating.
  final bool retainAlpha;

  @override
  Widget build(BuildContext context) {
    final ColorFilter filter;
    if (retainAlpha) {
      filter = const ColorFilter.matrix(<double>[
        1, 1, 1, 0, 0, // red -> white
        1, 1, 1, 0, 0, // green -> white
        1, 1, 1, 0, 0, // blue -> white
        0, 0, 0, 1, 0, // retain alpha
      ]);
    } else {
      filter = const ColorFilter.matrix(<double>[
        1, 1, 1, 0, 0, //
        1, 1, 1, 0, 0, //
        1, 1, 1, 0, 0, //
        0, 0, 0, 255, -254, // remove alpha unless it's 0
      ]);
    }
    return ColorFiltered(
      colorFilter: filter,
      child: child,
    );
  }
}
