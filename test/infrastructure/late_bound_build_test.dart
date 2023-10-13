import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:swift_ui/src/infrastructure/late_bound_build.dart';

void main() {
  group("LateBoundBuild", () {
    testWidgets("makes it possible to configure an ancestor from a descendant", (widgetTester) async {
      final ancestorTitle = ValueNotifier("TITLE ONE");

      // Build a screen scaffold where we configure the scaffold title from
      // a descendant widget down in the tree.
      await widgetTester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: _SomeScaffold(
            child: Center(
              // We place a ValueListenableBuilder in this tree so that we can
              // test what happens when _SomeScaffoldTitle rebuilds, but
              // _SomeScaffold doesn't rebuild.
              child: ValueListenableBuilder(
                valueListenable: ancestorTitle,
                builder: (context, title, child) {
                  return _SomeScaffoldTitle(
                    title, // When this widget is mounted or updated, this title is set on AncestorScaffold
                    child: const Text("Main Content"),
                  );
                },
              ),
            ),
          ),
        ),
      );

      // Ensure that the descendant _SomeScaffoldTitle widget set the title as expected.
      expect((_ancestorScaffoldTitleKey.currentWidget as Text).data, "TITLE ONE");

      // Re-build just the descendant widget with a new title for the ancestor.
      ancestorTitle.value = "TITLE TWO";
      // When rebuilding a subtree below the scaffold, it takes two frames to update the
      // title. First, the content subtree builds, and sets a new title value. Second,
      // the title subtree rebuilds with the new title value.
      await widgetTester.pump();
      await widgetTester.pump();

      // Ensure that the descendant _SomeScaffoldTitle widget set the title as expected.
      expect((_ancestorScaffoldTitleKey.currentWidget as Text).data, "TITLE TWO");
    });
  });
}

/// A widget that represents an arbitrary screen scaffold, with a screen title and
/// screen content.
///
/// The title of [_SomeScaffold] is configured by placing [_SomeScaffoldTitle]
/// somewhere within the [child] subtree.
///
/// [_SomeScaffold] and [_SomeScaffoldTitle] represent a capability that's similar to
/// how Swift UI configures the title in its navigation views.
class _SomeScaffold extends StatefulWidget {
  static _SomeScaffoldState of(BuildContext context) => context.findAncestorStateOfType<_SomeScaffoldState>()!;

  const _SomeScaffold({
    required this.child,
  });

  final Widget child;

  @override
  State<_SomeScaffold> createState() => _SomeScaffoldState();
}

class _SomeScaffoldState extends State<_SomeScaffold> {
  final _title = ValueNotifier<String?>(null);
  set title(String? title) => _title.value = title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildTitleBar(),
        Expanded(
          child: _buildContent(),
        ),
      ],
    );
  }

  Widget _buildTitleBar() {
    return SizedBox(
      height: 54,
      child: Center(
        child: LateBoundBuild(
          // This builder runs during layout, instead of the build phase.
          builder: (lateBoundContext) => LateBoundValueListenableBuilder<String?>(
            listenable: _title,
            builder: (_, value, __) {
              return Text(
                value ?? "",
                key: _ancestorScaffoldTitleKey,
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return widget.child;
  }
}

/// Displays a title within [_SomeScaffold].
class _SomeScaffoldTitle extends StatefulWidget {
  const _SomeScaffoldTitle(
    this.ancestorTitle, {
    this.child,
  });

  final String ancestorTitle;
  final Widget? child;

  @override
  State<_SomeScaffoldTitle> createState() => _SomeScaffoldTitleState();
}

class _SomeScaffoldTitleState extends State<_SomeScaffoldTitle> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _SomeScaffold.of(context).title = widget.ancestorTitle;
  }

  @override
  void didUpdateWidget(_SomeScaffoldTitle oldWidget) {
    super.didUpdateWidget(oldWidget);
    _SomeScaffold.of(context).title = widget.ancestorTitle;
  }

  @override
  Widget build(BuildContext context) {
    return widget.child ?? const SizedBox();
  }
}

final _ancestorScaffoldTitleKey = GlobalKey();
