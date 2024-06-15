import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:swift_ui/swift_ui.dart';

void main() {
  group("Shapes > Shadow >", () {
    testGoldens("smoke test", (widgetTester) async {
      final builder = GoldenBuilder.grid(columns: 2, widthToHeightRatio: 1)
        ..addScenario(
          'Rectangle',
          const Frame(
            width: 200,
            height: 100,
            child: Shadow(
              radius: 5,
              x: 5,
              y: 5,
              child: Rectangle(
                fillColor: Colors.blue,
              ),
            ),
          ),
        )
        ..addScenario(
          'Ellipse',
          const Frame(
            width: 200,
            height: 100,
            child: Shadow(
              radius: 5,
              x: 5,
              y: 5,
              child: Ellipse(
                fillColor: Colors.blue,
              ),
            ),
          ),
        )
        ..addScenario(
          'Ellipse stroke',
          const Frame(
            width: 200,
            height: 100,
            child: Shadow(
              radius: 5,
              x: 5,
              y: 5,
              child: Ellipse(
                strokeLineWidth: 5,
                strokeColor: Colors.blue,
              ),
            ),
          ),
        );
      await widgetTester.pumpWidgetBuilder(builder.build());
      await screenMatchesGolden(widgetTester, 'shadow_smoke-test');
    });
  });
}
