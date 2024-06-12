import 'package:flutter/widgets.dart';

import 'alignment.dart' as swift_ui;

/// A layout widget that aligns its child within a fixed-size rectangle.
class Frame extends StatelessWidget {
  const Frame({
    super.key,
    this.width,
    this.height,
    this.alignment = swift_ui.Alignment.center,
    required this.child,
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
  /// See [swift_ui.Alignment] for more info about the available alignments.
  final swift_ui.Alignment alignment;

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
          alignment: _alignment(textDirection),
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
          alignment: _alignment(textDirection),
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
        alignment: _alignment(textDirection),
        child: child,
      ),
    );
  }

  AlignmentGeometry _alignment(TextDirection direction) {
    final isLtr = direction == TextDirection.ltr;
    switch (alignment) {
      case swift_ui.Alignment.center:
        return Alignment.center;
      case swift_ui.Alignment.leading:
        return (isLtr) ? Alignment.centerLeft : Alignment.centerRight;
      case swift_ui.Alignment.trailing:
        return (isLtr) ? Alignment.centerRight : Alignment.centerLeft;
      case swift_ui.Alignment.top:
        return Alignment.topCenter;
      case swift_ui.Alignment.bottom:
        return Alignment.bottomCenter;
      case swift_ui.Alignment.topLeading:
        return (isLtr) ? Alignment.topLeft : Alignment.topRight;
      case swift_ui.Alignment.topTrailing:
        return (isLtr) ? Alignment.topRight : Alignment.topLeft;
      case swift_ui.Alignment.bottomLeading:
        return (isLtr) ? Alignment.bottomLeft : Alignment.bottomRight;
      case swift_ui.Alignment.bottomTrailing:
        return (isLtr) ? Alignment.bottomRight : Alignment.bottomLeft;
      case swift_ui.Alignment.centerFirstTextBaseline:
      case swift_ui.Alignment.centerLastTextBaseline:
      case swift_ui.Alignment.leadingFirstTextBaseline:
      case swift_ui.Alignment.trailingFirstTextBaseline:
      case swift_ui.Alignment.leadingLastTextBaseline:
      case swift_ui.Alignment.trailingLastTextBaseline:
        throw Exception("Frame does not yet support this alignment: $alignment");
    }
  }
}
