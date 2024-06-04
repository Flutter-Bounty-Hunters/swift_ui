import 'package:flutter/widgets.dart';
import 'package:swift_ui/swift_ui.dart';

class RectangleDemo extends StatelessWidget {
  const RectangleDemo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const VStack(
      [
        Frame(
          width: 200,
          height: 100,
          child: Rectangle(
            fill: ShapeStyle(
              color: Colors.blue,
            ),
          ),
        ),
        Frame(
          width: 200,
          height: 100,
          child: Rectangle(
            fill: ShapeStyle(
              gradient: LinearGradient(
                colors: [Colors.yellow, Colors.orange],
                begin: AlignmentDirectional.centerStart,
                end: AlignmentDirectional.centerEnd,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
