import 'package:flutter/widgets.dart';

import 'alignment.dart' hide Alignment;

/// A layout widget that displays its children vertically, like a column.
///
/// A `VStack` tightly wraps its [children]. Each child must have an intrinsic height
/// to be visible in a `VStack`.
class VStack extends StatelessWidget {
  const VStack(
    this.children, {
    super.key,
    this.alignment = HorizontalAlignment.center,
    this.spacing = 8,
  });

  /// The horizontal (cross-axis) alignment of the [children] within this [VStack].
  ///
  /// See [HorizontalAlignment] for more info about the available alignments.
  final HorizontalAlignment alignment;

  /// The distance between each child, or `nul` if you want the stack to choose a
  /// default spacing.
  final double spacing;

  /// Child widgets, which are displayed vertically in a column-style layout.
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return OverflowBox(
      // Note: When a VStack overflows available bounds, the content vertically
      // centers itself within the available height. Behavior verified as of
      // June 01, 2024.
      maxHeight: double.infinity,
      alignment: Alignment.center,
      // VStack content is vertically centered when it doesn't take up all
      // available height.
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: _columnAlignment,
          children: [
            for (final child in children) ...[
              child,
              if (spacing != 0.0) //
                SizedBox(height: spacing),
            ],
          ],
        ),
      ),
    );
  }

  CrossAxisAlignment get _columnAlignment {
    switch (alignment) {
      case HorizontalAlignment.leading:
        return CrossAxisAlignment.start;
      case HorizontalAlignment.center:
        return CrossAxisAlignment.center;
      case HorizontalAlignment.trailing:
        return CrossAxisAlignment.end;
      case HorizontalAlignment.listRowSeparatorLeading:
      case HorizontalAlignment.listRowSeparatorTrailing:
        throw Exception("VStack does not yet support this alignment: $alignment");
    }
  }
}
