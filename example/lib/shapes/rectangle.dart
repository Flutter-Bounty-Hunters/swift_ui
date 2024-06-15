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
            fillColor: Colors.blue,
          ),
        ),

        // Rectangle with gradient fill
        Frame(
          width: 200,
          height: 100,
          child: Rectangle(
            fillGradient: LinearGradient(
              colors: [Colors.yellow, Colors.orange],
            ),
          ),
        ),

        // Rectangle with solid stroke
        Frame(
          width: 200,
          height: 100,
          child: Rectangle(
            strokeColor: Colors.red,
            strokeLineWidth: 4.0,
          ),
        ),

        // Rectangle with gradient stroke
        Frame(
          width: 200,
          height: 100,
          child: Rectangle(
            strokeGradient: LinearGradient(
              colors: [Colors.yellow, Colors.blue],
            ),
            strokeLineWidth: 14.0,
          ),
        ),

        // Rectangle with shadow
        Frame(
          width: 200,
          height: 100,
          child: Shadow(
            color: Colors.white54,
            radius: 10,
            x: 10,
            y: 10,
            child: Rectangle(
              fillColor: Colors.purple,
            ),
          ),
        ),
      ],
      spacing: 20,
    );
  }
}
