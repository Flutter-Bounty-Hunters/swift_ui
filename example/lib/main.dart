import 'package:flutter/material.dart';
import 'package:swift_ui/swift_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NavigationView(
        child: Center(
          child: NavigationBarTitle(
            "THIRD TITLE",
            child: Text("Content Text"),
          ),
        ),
      ),
    );
  }
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
          color: Colors.yellow,
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
