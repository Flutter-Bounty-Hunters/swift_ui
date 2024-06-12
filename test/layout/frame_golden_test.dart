import 'package:flutter/widgets.dart' hide Alignment;
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:swift_ui/swift_ui.dart' hide Border;

void main() {
  group("Layout adjustments > Frame >", () {
    testGoldens("smoke test", (widgetTester) async {
      final builder = GoldenBuilder.grid(columns: 4, widthToHeightRatio: 1)
        ..addScenario(
          'Center',
          Container(
            decoration: BoxDecoration(border: Border.all()),
            child: Frame(
              width: 100,
              height: 100,
              alignment: Alignment.center,
              child: Container(
                width: 10,
                height: 10,
                color: Colors.blue,
              ),
            ),
          ),
        )
        ..addScenario(
          'Top',
          Container(
            decoration: BoxDecoration(border: Border.all()),
            child: Frame(
              width: 100,
              height: 100,
              alignment: Alignment.top,
              child: Container(
                width: 10,
                height: 10,
                color: Colors.blue,
              ),
            ),
          ),
        )
        ..addScenario(
          'Bottom',
          Container(
            decoration: BoxDecoration(border: Border.all()),
            child: Frame(
              width: 100,
              height: 100,
              alignment: Alignment.bottom,
              child: Container(
                width: 10,
                height: 10,
                color: Colors.blue,
              ),
            ),
          ),
        )
        ..addScenario(
          'Leading',
          Container(
            decoration: BoxDecoration(border: Border.all()),
            child: Frame(
              width: 100,
              height: 100,
              alignment: Alignment.leading,
              child: Container(
                width: 10,
                height: 10,
                color: Colors.blue,
              ),
            ),
          ),
        )
        ..addScenario(
          'Trailing',
          Container(
            decoration: BoxDecoration(border: Border.all()),
            child: Frame(
              width: 100,
              height: 100,
              alignment: Alignment.trailing,
              child: Container(
                width: 10,
                height: 10,
                color: Colors.blue,
              ),
            ),
          ),
        )
        ..addScenario(
          'topLeading',
          Container(
            decoration: BoxDecoration(border: Border.all()),
            child: Frame(
              width: 100,
              height: 100,
              alignment: Alignment.topLeading,
              child: Container(
                width: 10,
                height: 10,
                color: Colors.blue,
              ),
            ),
          ),
        )
        ..addScenario(
          'topTrailing',
          Container(
            decoration: BoxDecoration(border: Border.all()),
            child: Frame(
              width: 100,
              height: 100,
              alignment: Alignment.topTrailing,
              child: Container(
                width: 10,
                height: 10,
                color: Colors.blue,
              ),
            ),
          ),
        )
        ..addScenario(
          'bottomLeading',
          Container(
            decoration: BoxDecoration(border: Border.all()),
            child: Frame(
              width: 100,
              height: 100,
              alignment: Alignment.bottomLeading,
              child: Container(
                width: 10,
                height: 10,
                color: Colors.blue,
              ),
            ),
          ),
        )
        ..addScenario(
          'bottomTrailing',
          Container(
            decoration: BoxDecoration(border: Border.all()),
            child: Frame(
              width: 100,
              height: 100,
              alignment: Alignment.bottomTrailing,
              child: Container(
                width: 10,
                height: 10,
                color: Colors.blue,
              ),
            ),
          ),
        );

      await widgetTester.pumpWidgetBuilder(builder.build());
      await screenMatchesGolden(widgetTester, 'frame_smoke-test');
    });
  });
}
