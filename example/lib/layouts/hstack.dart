import 'package:flutter/widgets.dart';
import 'package:swift_ui/swift_ui.dart';

class HStackTopAlignedDemo extends StatelessWidget {
  const HStackTopAlignedDemo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const HStack(
      alignment: VerticalAlignment.top,
      [
        Text("First\nSecond"),
        Text("Third"),
        Text("Fourth\nFifth\nSixth"),
      ],
    );
  }
}

class HStackCenterAlignedDemo extends StatelessWidget {
  const HStackCenterAlignedDemo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const HStack(
      alignment: VerticalAlignment.center,
      [
        Text("First\nSecond"),
        Text("Third"),
        Text("Fourth\nFifth\nSixth"),
      ],
    );
  }
}

class HStackBottomAlignedDemo extends StatelessWidget {
  const HStackBottomAlignedDemo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const HStack(
      alignment: VerticalAlignment.bottom,
      [
        Text("First\nSecond"),
        Text("Third"),
        Text("Fourth\nFifth\nSixth"),
      ],
    );
  }
}

class HStackExceedsAvailableSpaceDemo extends StatelessWidget {
  const HStackExceedsAvailableSpaceDemo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HStack([
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
    ]);
  }
}
