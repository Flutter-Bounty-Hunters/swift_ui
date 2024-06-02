import 'package:flutter/widgets.dart';

/// Surrounds [child] with a scaffold that helps fit a widget-under-test
/// into a [GoldenBuilder.grid].
Widget createGoldenGridItemScaffold(Widget child) {
  // This scaffold structure is the result of how golden_toolkit seems
  // to layout widgets with GoldenBuilder. The GoldenBuilder is given
  // an aspect ratio to maintain, which should result in a bounded height,
  // but instead we get constraints with infinite height.
  //
  // To avoid layout exceptions, we constrain our height. In theory we
  // should be able to use an aspect ratio of 1.0, but golden_toolkit
  // includes some title text above each golden, which eats up some
  // height. Therefore, we make ourselves a bit shorter than square so
  // we don't overflow into the title text.
  //
  // Also, it appears that golden_toolkit doesn't clip the bounds of
  // individual widgets in the grid, so we clip ourselves explicitly.
  return AspectRatio(
    aspectRatio: 1.2,
    child: ClipRect(
      child: child,
    ),
  );
}
