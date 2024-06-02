import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:swift_ui/swift_ui.dart';

import '../golden_tools.dart';

void main() {
  group("Layout > VStack >", () {
    testGoldens("smoke test", (widgetTester) async {
      final builder = GoldenBuilder.grid(columns: 2, widthToHeightRatio: 1)
        ..addScenario(
          "Leading",
          createGoldenGridItemScaffold(
            const VStack(
              alignment: HorizontalAlignment.leading,
              [
                Text("First"),
                Text("Second"),
                Text("Third"),
              ],
            ),
          ),
        )
        ..addScenario(
            "Center",
            createGoldenGridItemScaffold(
              const VStack(
                alignment: HorizontalAlignment.center,
                [
                  Text("First"),
                  Text("Second"),
                  Text("Third"),
                ],
              ),
            ))
        ..addScenario(
            "Trailing",
            createGoldenGridItemScaffold(
              const VStack(
                alignment: HorizontalAlignment.trailing,
                [
                  Text("First"),
                  Text("Second"),
                  Text("Third"),
                ],
              ),
            ))
        ..addScenario(
            "Overflow",
            createGoldenGridItemScaffold(
              VStack([
                // TODO: Replace these with Rectangle() widgets
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.purple,
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.orange,
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.cyan,
                ),
              ]),
            ));

      await widgetTester.pumpWidgetBuilder(builder.build(), surfaceSize: const Size(800, 800));

      await screenMatchesGolden(widgetTester, "vstack_smoke-test");
    });
  });
}
