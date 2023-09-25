import 'package:flutter/widgets.dart' as widgets;

class Border extends widgets.StatelessWidget {
  const Border(
    this.color, {
    super.key,
    this.width = 1,
    required this.child,
  });

  final widgets.Color color;
  final double width;
  final widgets.Widget child;

  @override
  widgets.Widget build(widgets.BuildContext context) {
    return widgets.DecoratedBox(
      decoration: widgets.BoxDecoration(
        border: widgets.Border.all(color: color, width: width),
      ),
    );
  }
}
