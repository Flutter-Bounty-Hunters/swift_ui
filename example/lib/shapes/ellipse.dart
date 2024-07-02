import 'package:flutter/widgets.dart';
import 'package:swift_ui/swift_ui.dart';

class EllipseDemo extends StatelessWidget {
  const EllipseDemo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const VStack(
      [
        // Ellipse with solid fill
        Frame(
          width: 200,
          height: 100,
          Ellipse(
            fillColor: Colors.blue,
          ),
        ),

        // Ellipse with gradient fill
        Frame(
          width: 200,
          height: 100,
          Ellipse(
            fillGradient: LinearGradient(
              colors: [Colors.yellow, Colors.orange],
            ),
          ),
        ),

        // Ellipse with solid stroke
        Frame(
          width: 200,
          height: 100,
          Ellipse(
            strokeColor: Colors.red,
            strokeLineWidth: 4.0,
          ),
        ),

        // Ellipse with gradient stroke
        Frame(
          width: 200,
          height: 100,
          Ellipse(
            strokeGradient: LinearGradient(
              colors: [Colors.yellow, Colors.blue],
            ),
            strokeLineWidth: 14.0,
          ),
        ),
      ],
      spacing: 20,
    );
  }
}
