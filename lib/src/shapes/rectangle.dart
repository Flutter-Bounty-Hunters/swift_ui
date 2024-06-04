import 'package:flutter/widgets.dart';
import 'package:swift_ui/src/shapes/shape_style.dart';

/// A rectangular shape that takes the size of
class Rectangle extends StatelessWidget {
  const Rectangle({
    super.key,
    this.fill,
  });

  final ShapeStyle? fill;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: fill?.color,
        gradient: fill?.gradient,
      ),
    );
  }
}
