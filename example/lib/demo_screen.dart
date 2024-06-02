import 'package:flutter/cupertino.dart';

WidgetBuilder createDemo(Widget child) {
  return (BuildContext context) {
    return DemoScreen(child: child);
  };
}

class DemoScreen extends StatelessWidget {
  const DemoScreen({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(),
      child: SafeArea(
        child: child,
      ),
    );
  }
}
