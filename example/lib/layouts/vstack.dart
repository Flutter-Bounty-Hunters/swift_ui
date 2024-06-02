import 'package:flutter/widgets.dart';
import 'package:swift_ui/swift_ui.dart';

class VStackLeadingAlignedDemo extends StatelessWidget {
  const VStackLeadingAlignedDemo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const VStack(
      alignment: HorizontalAlignment.leading,
      [
        Text("First"),
        Text("Second"),
        Text("Third"),
      ],
    );
  }
}

class VStackCenterAlignedDemo extends StatelessWidget {
  const VStackCenterAlignedDemo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const VStack(
      alignment: HorizontalAlignment.center,
      [
        Text("First"),
        Text("Second"),
        Text("Third"),
      ],
    );
  }
}

class VStackTrailingAlignedDemo extends StatelessWidget {
  const VStackTrailingAlignedDemo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const VStack(
      alignment: HorizontalAlignment.trailing,
      [
        Text("First"),
        Text("Second"),
        Text("Third"),
      ],
    );
  }
}

class VStackExceedsAvailableSpaceDemo extends StatelessWidget {
  const VStackExceedsAvailableSpaceDemo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return VStack([
      // TODO: Replace these with Rectangle() widgets
      Container(
        width: double.infinity,
        height: 200,
        color: Colors.red,
      ),
      Container(
        width: double.infinity,
        height: 200,
        color: Colors.green,
      ),
      Container(
        width: double.infinity,
        height: 200,
        color: Colors.blue,
      ),
      Container(
        width: double.infinity,
        height: 200,
        color: Colors.purple,
      ),
      Container(
        width: double.infinity,
        height: 200,
        color: Colors.orange,
      ),
      Container(
        width: double.infinity,
        height: 200,
        color: Colors.cyan,
      ),
    ]);
  }
}
