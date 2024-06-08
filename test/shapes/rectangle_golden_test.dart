import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:swift_ui/swift_ui.dart';

void main() {
  group("Shapes > Rectangle >", () {
    testGoldens("smoke test", (widgetTester) async {
      final builder = GoldenBuilder.grid(columns: 2, widthToHeightRatio: 1)
        ..addScenario(
          'Solid fill',
          const Frame(
            width: 200,
            height: 100,
            child: Rectangle(
              fill: ShapeStyle(color: Colors.blue),
            ),
          ),
        )
        ..addScenario(
          'Gradient fill',
          const Frame(
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
        )
        ..addScenario(
          'Solid stroke',
          const Frame(
            width: 200,
            height: 100,
            child: Rectangle(
              stroke: ShapeStyle(color: Colors.blue),
            ),
          ),
        )
        ..addScenario(
          'Gradient stroke',
          const Frame(
            width: 200,
            height: 100,
            child: Rectangle(
              stroke: ShapeStyle(
                gradient: LinearGradient(
                  colors: [Colors.yellow, Colors.orange],
                ),
              ),
            ),
          ),
        );
      await widgetTester.pumpWidgetBuilder(builder.build());
      await screenMatchesGolden(widgetTester, 'rectangle_smoke-test');
    });
  });
}
