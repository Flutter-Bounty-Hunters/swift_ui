import 'package:flutter/widgets.dart';

class Frame extends StatelessWidget {
  const Frame({
    super.key,
    this.width,
    this.height,
    this.alignment = Alignment.center,
    required this.child,
  });

  final double? width;
  final double? height;
  final Alignment alignment;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (width == null && height == null) {
      return child;
    }

    if (width == null) {
      // Use the intrinsic width of the child.
      return SizedBox(
        height: height,
        child: Align(
          alignment: alignment,
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
          alignment: alignment,
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
        alignment: alignment,
        child: child,
      ),
    );
  }
}
