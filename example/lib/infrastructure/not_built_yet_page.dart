import 'package:flutter/cupertino.dart';

/// A page, which informs the user that whatever content is supposed to appear on this
/// page hasn't been built yet.
///
/// This page is a placeholder for any examples or content that we know we need, but which
/// hasn't been implemented yet.
class NotBuiltYetPage extends StatelessWidget {
  const NotBuiltYetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(),
      child: Center(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 48),
          child: const Text(_contentText),
        ),
      ),
    );
  }

  static const _contentText = '''
This page doesn't exist yet. Would you like to help build it?

Our typical process is:

1. Investigate Swift UI API docs.
2. Create Swift UI examples in iOS app.
3. Implement Flutter version.
4. Add Flutter version to this app.

Follow @FlutterBounties on Twitter to stay up to date.
  ''';
}

Widget notBuiltYetPageBuilder(BuildContext) => const NotBuiltYetPage();
