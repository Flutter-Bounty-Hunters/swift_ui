import 'package:flutter/widgets.dart' hide Alignment;

import 'alignment.dart';

/// A layout widget that aligns its child within a fixed-size rectangle.
class Frame extends StatelessWidget {
  const Frame(
    this.child, {
    super.key,
    this.width,
    this.height,
    this.alignment = Alignment.center,
  });

  /// The width of the frame.
  ///
  /// If `null`, the intrinsic width of the child is used.
  final double? width;

  /// The height of the frame.
  ///
  /// If `null`, the intrinsic height of the child is used.
  final double? height;

  /// The alignment of the child within the frame.
  ///
  /// See [Alignment] for more info about the available alignments.
  final Alignment alignment;

  /// The child widget to be displayed within the frame.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (width == null && height == null) {
      return child;
    }

    final textDirection = Directionality.of(context);

    if (width == null) {
      // Use the intrinsic width of the child.
      return SizedBox(
        height: height,
        child: Align(
          alignment: alignment.toFlutter(textDirection),
          child: IntrinsicWidth(
            child: child,
          ),
        ),
      );
    }

    if (height == null) {
      // Use the intrinsic height of the child.
      return SizedBox(
        width: width,
        child: Align(
          alignment: alignment.toFlutter(textDirection),
          child: IntrinsicHeight(
            child: child,
          ),
        ),
      );
    }

    return SizedBox(
      width: width,
      height: height,
      child: Align(
        alignment: alignment.toFlutter(textDirection),
        child: child,
      ),
    );
  }
}
