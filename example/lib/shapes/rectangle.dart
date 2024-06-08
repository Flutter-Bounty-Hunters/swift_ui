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
        // Rectangle with solid fill
        Frame(
          width: 200,
          height: 100,
          child: Rectangle(
            fill: ShapeStyle(
              color: Colors.blue,
            ),
          ),
        ),

        // Rectangle with gradient fill
        Frame(
          width: 200,
          height: 100,
          child: Rectangle(
            fill: ShapeStyle(
              gradient: LinearGradient(
                colors: [Colors.yellow, Colors.orange],
              ),
            ),
          ),
        ),

        // Rectangle with solid stroke
        Frame(
          width: 200,
          height: 100,
          child: Rectangle(
            stroke: ShapeStyle(
              color: Colors.red,
            ),
            strokeLineWidth: 4.0,
          ),
        ),

        // Rectangle with gradient stroke
        Frame(
          width: 200,
          height: 100,
          child: Rectangle(
            stroke: ShapeStyle(
              gradient: LinearGradient(
                colors: [Colors.yellow, Colors.blue],
              ),
            ),
            strokeLineWidth: 14.0,
          ),
        ),
      ],
    );
  }
}
