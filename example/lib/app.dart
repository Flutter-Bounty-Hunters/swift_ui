import 'package:example/home_screen.dart';
import 'package:flutter/cupertino.dart';

class SwiftUiGalleryApp extends StatelessWidget {
  const SwiftUiGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Replace CupertinoApp with some combination of WidgetsApp and perhaps a SwiftUiScope
    return const CupertinoApp(
      home: HomeScreen(),
    );
  }
}
