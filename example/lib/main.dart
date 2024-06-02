import 'package:example/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:swift_ui/swift_ui.dart';

void main() {
  runApp(const SwiftUiGalleryApp());
}

class NavigationView extends StatefulWidget {
  static NavigationViewState of(BuildContext context) {
    return context.findAncestorStateOfType<NavigationViewState>()!;
  }

  const NavigationView({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<NavigationView> createState() => NavigationViewState();
}

class NavigationViewState extends State<NavigationView> {
  String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100),
        Container(
          height: 54,
          color: const Color(0xFFFFFF00),
          child: Center(
            // child: LateBoundBuilder(
            child: LateBoundBuild(
              builder: (context) {
                final title = NavigationView.of(context).title ?? "DEFAULT TILE";
                return Text(title);
              },
            ),
          ),
        ),
        Expanded(
          child: widget.child,
        ),
      ],
    );
  }
}

class NavigationBarTitle extends StatefulWidget {
  const NavigationBarTitle(
    this.title, {
    super.key,
    this.child,
  });

  final String title;
  final Widget? child;

  @override
  State<NavigationBarTitle> createState() => _NavigationBarTitleState();
}

class _NavigationBarTitleState extends State<NavigationBarTitle> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    NavigationView.of(context).title = widget.title;
  }

  @override
  void didUpdateWidget(NavigationBarTitle oldWidget) {
    super.didUpdateWidget(oldWidget);

    NavigationView.of(context).title = widget.title;
  }

  @override
  Widget build(BuildContext context) {
    return widget.child ?? const SizedBox();
  }
}

class LateBoundBuilder extends StatelessWidget {
  const LateBoundBuilder({
    super.key,
    required this.builder,
  });

  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, _) => builder(context));
  }
}
