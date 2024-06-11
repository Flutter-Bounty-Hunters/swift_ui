import 'package:flutter/widgets.dart';

/// A layout widget that displays its children horizontally, like a row.
///
/// An `HStack` tightly wraps its [children]. Each child must have an intrinsic width
/// to be visible in an `HStack`.
class HStack extends StatelessWidget {
  const HStack(
    this.children, {
    super.key,
    this.alignment = VerticalAlignment.center,
    this.spacing = 8,
  });

  /// The vertical (cross-axis) alignment of the [children] within this [HStack].
  ///
  /// See [VerticalAlignment] for more info about the available alignments.
  final VerticalAlignment alignment;

  /// The distance between each child, or `null` if you want the stack to choose
  /// a default spacing.
  final double spacing;

  /// Child widgets, which are displayed horizontally in a row-style layout.
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return OverflowBox(
      // Note: When a HStack overflows available bounds, the content horizontally
      // centers itself within the available height. Behavior verified as of
      // June 01, 2024.
      maxWidth: double.infinity,
      alignment: Alignment.center,
      // HStack content is horizontally centered when it doesn't take up all
      // available height.
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: _rowAlignment,
          children: [
            for (final child in children) ...[
              child,
              if (spacing != 0.0) //
                SizedBox(width: spacing),
            ],
          ],
        ),
      ),
    );
  }

  CrossAxisAlignment get _rowAlignment {
    switch (alignment) {
      case VerticalAlignment.top:
        return CrossAxisAlignment.start;
      case VerticalAlignment.center:
        return CrossAxisAlignment.center;
      case VerticalAlignment.bottom:
        return CrossAxisAlignment.end;
      case VerticalAlignment.firstTextBaseline:
      case VerticalAlignment.lastTextBaseline:
        throw Exception(
            "HStack does not yet support this alignment: $alignment");
    }
  }
}

enum VerticalAlignment {
  /// Alignment with the top of a bounding space.
  top,

  /// Alignment that's equidistant from the top and bottom of a bounding space.
  center,

  /// Alignment with the bottom of a bounding space.
  bottom,

  /// Alignment with the baseline of the first line of text within another widget.
  firstTextBaseline,

  /// Alignment with the baseline of the last line of text within another widget.
  lastTextBaseline,
}
