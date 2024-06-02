import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:swift_ui/swift_ui.dart';

import '../golden_tools.dart';

void main() {
  group("Layout > HStack >", () {
    testGoldens("smoke test", (widgetTester) async {
      final builder = GoldenBuilder.grid(columns: 2, widthToHeightRatio: 1)
        ..addScenario(
          "Top",
          createGoldenGridItemScaffold(
            const HStack(
              alignment: VerticalAlignment.top,
              [
                Text("First\nSecond"),
                Text("Third"),
                Text("Fourth\nFifth\nSixth"),
              ],
            ),
          ),
        )
        ..addScenario(
            "Center",
            createGoldenGridItemScaffold(
              const HStack(
                alignment: VerticalAlignment.center,
                [
                  Text("First\nSecond"),
                  Text("Third"),
                  Text("Fourth\nFifth\nSixth"),
                ],
              ),
            ))
        ..addScenario(
            "Bottom",
            createGoldenGridItemScaffold(
              const HStack(
                alignment: VerticalAlignment.bottom,
                [
                  Text("First\nSecond"),
                  Text("Third"),
                  Text("Fourth\nFifth\nSixth"),
                ],
              ),
            ))
        ..addScenario(
            "Overflow",
            createGoldenGridItemScaffold(
              HStack([
                // TODO: Replace these with Rectangle() widgets
                Container(
                  width: 100,
                  height: double.infinity,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: double.infinity,
                  color: Colors.green,
                ),
                Container(
                  width: 100,
                  height: double.infinity,
                  color: Colors.blue,
                ),
                Container(
                  width: 100,
                  height: double.infinity,
                  color: Colors.purple,
                ),
                Container(
                  width: 100,
                  height: double.infinity,
                  color: Colors.orange,
                ),
                Container(
                  width: 100,
                  height: double.infinity,
                  color: Colors.cyan,
                ),
              ]),
            ));

      await widgetTester.pumpWidgetBuilder(builder.build(), surfaceSize: const Size(800, 800));

      await screenMatchesGolden(widgetTester, "hstack_smoke-test");
    });
  });
}
