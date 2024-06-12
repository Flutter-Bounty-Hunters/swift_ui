import 'package:flutter/painting.dart' as painting;

enum HorizontalAlignment {
  /// Alignment with the "leading" or "starting" edge of a bounding space.
  ///
  /// In a left-to-right layout context, the leading edge is the left edge.
  leading,

  /// Alignment that's equidistant from the left and right edges of a bounding space.
  center,

  /// Alignment with the "trailing" or "ending" edge of a bounding space.
  ///
  /// In a left-to-right layout context, the trailing edge is the right edge.
  trailing,

  /// Alignment with the leading edge of a list separator - this alignment is only
  /// relevant when a widget is displayed within a list that has dividers.
  listRowSeparatorLeading,

  /// Alignment with the trailing edge of a list separator - this alignment is only
  /// relevant when a widget is displayed within a list that has dividers.
  listRowSeparatorTrailing,
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

enum Alignment {
  /// Alignment that's equidistant from all edges of the bounding space.
  center(horizontal: HorizontalAlignment.center, vertical: VerticalAlignment.center),

  /// Alignment with the "leading" (or "starting") edge of the bounding space.
  ///
  /// In a left-to-right layout context, this is the left-most edge.
  leading(horizontal: HorizontalAlignment.leading, vertical: VerticalAlignment.center),

  /// Alignment with the "trailing" (or "ending") edge of the bounding space.
  ///
  /// In a left-to-right layout context, this is the right-most edge.
  trailing(horizontal: HorizontalAlignment.trailing, vertical: VerticalAlignment.center),

  /// Alignment with the top edge of the bounding space.
  top(horizontal: HorizontalAlignment.center, vertical: VerticalAlignment.top),

  /// Alignment with the bottom edge of the bounding space.
  bottom(horizontal: HorizontalAlignment.center, vertical: VerticalAlignment.bottom),

  /// Alignment with the top and "leading" (or "starting") edges of the bounding space.
  ///
  /// In a left-to-right layout context, this is the top-left corner.
  topLeading(horizontal: HorizontalAlignment.leading, vertical: VerticalAlignment.top),

  /// Alignment with the top and "trailing" (or "ending") edges of the bounding space.
  ///
  /// In a left-to-right layout context, this is the top-right corner.
  topTrailing(horizontal: HorizontalAlignment.trailing, vertical: VerticalAlignment.top),

  /// Alignment with the bottom and "leading" (or "starting") edges of the bounding space.
  ///
  /// In a left-to-right layout context, this is the bottom-left corner.
  bottomLeading(horizontal: HorizontalAlignment.leading, vertical: VerticalAlignment.bottom),

  /// Alignment with the bottom and "trailing" (or "ending") edges of the bounding space.
  ///
  /// In a left-to-right layout context, this is the bottom-right corner.
  bottomTrailing(horizontal: HorizontalAlignment.trailing, vertical: VerticalAlignment.bottom),

  /// Alignment with the top-most baseline.
  centerFirstTextBaseline(horizontal: HorizontalAlignment.center, vertical: VerticalAlignment.firstTextBaseline),

  /// Alignment with the bottom-most baseline.
  centerLastTextBaseline(horizontal: HorizontalAlignment.center, vertical: VerticalAlignment.lastTextBaseline),

  /// Alignment with the "leading" (or "starting") edge of the top-most baseline.
  ///
  /// In a left-to-right layout context, this is the left edge of the first line of text.
  leadingFirstTextBaseline(horizontal: HorizontalAlignment.leading, vertical: VerticalAlignment.firstTextBaseline),

  /// Alignment with the "trailing" (or "ending") edge of the top-most baseline.
  ///
  /// In a left-to-right layout context, this is the right edge of the first line of text.
  trailingFirstTextBaseline(horizontal: HorizontalAlignment.trailing, vertical: VerticalAlignment.firstTextBaseline),

  /// Alignment with the "leading" (or "starting") edge of the bottom-most baseline.
  ///
  /// In a left-to-right layout context, this is the left edge of the last line of text.
  leadingLastTextBaseline(horizontal: HorizontalAlignment.leading, vertical: VerticalAlignment.lastTextBaseline),

  /// Alignment with the "trailing" (or "ending") edge of the bottom-most baseline.
  ///
  /// In a left-to-right layout context, this is the right edge of the last line of text.
  trailingLastTextBaseline(horizontal: HorizontalAlignment.trailing, vertical: VerticalAlignment.lastTextBaseline);

  const Alignment({
    required this.horizontal,
    required this.vertical,
  });

  /// The horizontal alignment of the widget within its bounding space.
  final HorizontalAlignment horizontal;

  /// The vertical alignment of the widget within its bounding space.
  final VerticalAlignment vertical;

  painting.AlignmentGeometry toFlutter(painting.TextDirection direction) {
    final isLtr = direction == painting.TextDirection.ltr;
    switch (this) {
      case Alignment.center:
        return painting.Alignment.center;
      case Alignment.leading:
        return isLtr ? painting.Alignment.centerLeft : painting.Alignment.centerRight;
      case Alignment.trailing:
        return isLtr ? painting.Alignment.centerRight : painting.Alignment.centerLeft;
      case Alignment.top:
        return painting.Alignment.topCenter;
      case Alignment.bottom:
        return painting.Alignment.bottomCenter;
      case Alignment.topLeading:
        return isLtr ? painting.Alignment.topLeft : painting.Alignment.topRight;
      case Alignment.topTrailing:
        return isLtr ? painting.Alignment.topRight : painting.Alignment.topLeft;
      case Alignment.bottomLeading:
        return isLtr ? painting.Alignment.bottomLeft : painting.Alignment.bottomRight;
      case Alignment.bottomTrailing:
        return isLtr ? painting.Alignment.bottomRight : painting.Alignment.bottomLeft;
      case Alignment.centerFirstTextBaseline:
      case Alignment.centerLastTextBaseline:
      case Alignment.leadingFirstTextBaseline:
      case Alignment.trailingFirstTextBaseline:
      case Alignment.leadingLastTextBaseline:
      case Alignment.trailingLastTextBaseline:
        throw Exception("swift_ui does not yet support this alignment: $this");
    }
  }
}
