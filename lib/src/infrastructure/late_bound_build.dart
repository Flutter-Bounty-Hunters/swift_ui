import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';

/// Widget that builds its subtree during Flutter's layout phase instead of its build phase.
///
/// The purpose of [LateBoundBuild] is to run the [builder] after all other widgets have run
/// their build. As a result, if a regular widget configures some ancestor property, such as
/// a descendant widget configuring an ancestor's title, a [LateBoundBuild] can run after
/// that configuration happens, and thereby use a value that as provided by a widget in a
/// completely different subtree.
///
/// In Swift UI, an example of this behavior can be seen when the `navigationTitle()` modifier
/// method alters the title of an ancestor `NavigationView`.
///
/// While a [LateBoundBuild] will run after all regular widget builds, there's no way to know
/// what order multiple [LateBoundBuild]s will build. Similarly, some other builders, such as
/// [LayoutBuilder], also run during layout, and therefore can't be used to configure the
/// content within a [LateBoundBuild].
class LateBoundBuild extends RenderObjectWidget {
  const LateBoundBuild({
    super.key,
    required this.builder,
  });

  final WidgetBuilder builder;

  @override
  RenderObjectElement createElement() => LateBoundBuildElement(this);

  @override
  RenderObject createRenderObject(BuildContext context) => RenderLateBoundBuild();
}

class LateBoundBuildElement extends RenderObjectElement {
  LateBoundBuildElement(LateBoundBuild super.widget);

  @override
  RenderLateBoundBuild get renderObject => super.renderObject as RenderLateBoundBuild;

  Element? _child;

  @override
  void visitChildren(ElementVisitor visitor) {
    if (_child != null) {
      visitor(_child!);
    }
  }

  @override
  void forgetChild(Element child) {
    assert(child == _child);
    _child = null;
    super.forgetChild(child);
  }

  @override
  void mount(Element? parent, Object? newSlot) {
    super.mount(parent, newSlot); // Creates the renderObject.
    renderObject.buildSubtreeCallback = _layout;
  }

  @override
  void update(LateBoundBuild newWidget) {
    assert(widget != newWidget);
    super.update(newWidget);
    assert(widget == newWidget);

    renderObject
      ..buildSubtreeCallback = _layout
      ..markNeedsBuild();
  }

  @override
  void performRebuild() {
    // This gets called if markNeedsBuild() is called on us.
    // That might happen if, e.g., our builder uses Inherited widgets.
    renderObject.markNeedsBuild();
    super.performRebuild(); // Calls widget.updateRenderObject (a no-op in this case).
  }

  @override
  void unmount() {
    renderObject.buildSubtreeCallback = null;
    super.unmount();
  }

  /// Builds the subtree for this widget, whenever desired.
  void _layout() {
    owner!.buildScope(this, () {
      try {
        // Build our subtree by running the provided subtree builder.
        final built = (widget as LateBoundBuild).builder(this);
        debugWidgetBuilderValue(widget, built);
        _child = updateChild(_child, built, null);
      } catch (e, stack) {
        // Something went wrong when running the provided subtree builder. Report it
        // the error in an error widget.
        final built = _buildErrorWidget(e, stack);
        _child = updateChild(null, built, slot);
      }
      assert(_child != null);
    });
  }

  Widget _buildErrorWidget(Object e, StackTrace stack) {
    return ErrorWidget.builder(
      _reportException(
        ErrorDescription('building $widget'),
        e,
        stack,
        informationCollector: () => <DiagnosticsNode>[
          if (kDebugMode) DiagnosticsDebugCreator(DebugCreator(this)),
        ],
      ),
    );
  }

  @override
  void insertRenderObjectChild(RenderObject child, Object? slot) {
    final renderObject = this.renderObject;
    assert(slot == null);
    assert(renderObject.debugValidateChild(child));
    assert(child is RenderBox?);
    renderObject.child = child as RenderBox?;
    assert(renderObject == this.renderObject);
  }

  @override
  void moveRenderObjectChild(RenderObject child, Object? oldSlot, Object? newSlot) {
    assert(false);
  }

  @override
  void removeRenderObjectChild(RenderObject child, Object? slot) {
    final renderObject = this.renderObject;
    assert(renderObject.child == child);
    renderObject.child = null;
    assert(renderObject == this.renderObject);
  }
}

FlutterErrorDetails _reportException(
  DiagnosticsNode context,
  Object exception,
  StackTrace stack, {
  InformationCollector? informationCollector,
}) {
  final FlutterErrorDetails details = FlutterErrorDetails(
    exception: exception,
    stack: stack,
    library: 'swift_ui',
    context: context,
    informationCollector: informationCollector,
  );
  FlutterError.reportError(details);
  return details;
}

class RenderLateBoundBuild extends RenderBox with RenderObjectWithChildMixin<RenderBox> {
  /// Sets a callback, which is run during layout, and is expected to build a subtree
  /// for [LateBoundBuild], and add that subtree to this [RenderLateBoundBuild].
  ///
  /// Typically, elements build widgets, which create elements, which build widgets,
  /// until the entire widget tree is built. This phase is called is the build phase.
  ///
  /// [RenderLateBoundBuild] is a `RenderObject` that's specifically designed to skip
  /// building its subtree during the build phase, and instead build its subtree during
  /// layout. Running build during layout creates a strange relationship between
  /// [RenderLateBoundBuild] and [LateBoundBuildElement], because building a "widget scope"
  /// is the job of an `Element`, whereas layout and painting is the job of a `RenderObject`.
  ///
  /// This callback is expected to run the typical `Element` widget build behavior for
  /// our subtree, at a time of our choosing.
  set buildSubtreeCallback(VoidCallback? newBuildSubtreeCallback) {
    if (newBuildSubtreeCallback == _buildSubtreeCallback) {
      return;
    }
    _buildSubtreeCallback = newBuildSubtreeCallback;
    markNeedsLayout();
  }

  VoidCallback? _buildSubtreeCallback;

  /// Whether our subtree needs to run widget building, e.g., when a widget in the
  /// subtree calls its own `setState()` method.
  bool _needsBuild = true;

  /// Marks this layout builder as needing to rebuild.
  ///
  /// The layout build rebuilds automatically when layout constraints change.
  /// However, we must also rebuild when the widget updates, e.g. after
  /// [State.setState], or [State.didChangeDependencies], even when the layout
  /// constraints remain unchanged.
  void markNeedsBuild() {
    // Do not call the callback directly. It must be called during the layout
    // phase, when parent constraints are available. Calling `markNeedsLayout`
    // will cause it to be called at the right time.
    _needsBuild = true;
    markNeedsLayout();
  }

  /// Invoke the callback supplied via [updateCallback].
  ///
  /// Typically this results in [ConstrainedLayoutBuilder.builder] being called
  /// during layout.
  void rebuildIfNecessary() {
    assert(_buildSubtreeCallback != null);
    if (_needsBuild) {
      _needsBuild = false;
      invokeLayoutCallback((constraints) {
        _buildSubtreeCallback!();
      });
    }
  }

  @override
  double computeMinIntrinsicWidth(double height) {
    assert(_debugThrowIfNotCheckingIntrinsics());
    return 0.0;
  }

  @override
  double computeMaxIntrinsicWidth(double height) {
    assert(_debugThrowIfNotCheckingIntrinsics());
    return 0.0;
  }

  @override
  double computeMinIntrinsicHeight(double width) {
    assert(_debugThrowIfNotCheckingIntrinsics());
    return 0.0;
  }

  @override
  double computeMaxIntrinsicHeight(double width) {
    assert(_debugThrowIfNotCheckingIntrinsics());
    return 0.0;
  }

  @override
  Size computeDryLayout(BoxConstraints constraints) {
    assert(_debugThrowIfNotCheckingIntrinsics());
    return Size.zero;
  }

  @override
  void performLayout() {
    final BoxConstraints constraints = this.constraints;
    rebuildIfNecessary();
    if (child != null) {
      child!.layout(constraints, parentUsesSize: true);
      size = constraints.constrain(child!.size);
    } else {
      size = constraints.biggest;
    }
  }

  @override
  double? computeDistanceToActualBaseline(TextBaseline baseline) {
    if (child != null) {
      return child!.getDistanceToActualBaseline(baseline);
    }
    return super.computeDistanceToActualBaseline(baseline);
  }

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    return child?.hitTest(result, position: position) ?? false;
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (child != null) {
      context.paintChild(child!, offset);
    }
  }

  bool _debugThrowIfNotCheckingIntrinsics() {
    assert(() {
      if (!RenderObject.debugCheckingIntrinsics) {
        throw FlutterError(
          "LateBoundBuilder does not support returning intrinsic dimensions,"
          " or computing dry layout - LateBoundBuilder doesn't know the "
          "structure of its content until a real layout pass runs.",
        );
      }
      return true;
    }());

    return true;
  }
}

/// Similar to [ValueListenableBuilder], except this widget won't throw an exception if the value
/// is changed during the build phase.
///
/// If the value is changed during the build phase, another frame is scheduled, and this subtree
/// is rebuilt in the next frame with the new value.
class LateBoundValueListenableBuilder<ValueType> extends StatefulWidget {
  const LateBoundValueListenableBuilder({
    super.key,
    required this.listenable,
    required this.builder,
    this.child,
  });

  final ValueListenable<ValueType> listenable;
  final ValueWidgetBuilder<ValueType> builder;
  final Widget? child;

  @override
  State<LateBoundValueListenableBuilder> createState() => _LateBoundValueListenableBuilderState<ValueType>();
}

class _LateBoundValueListenableBuilderState<ValueType> extends State<LateBoundValueListenableBuilder<ValueType>> {
  @override
  void initState() {
    super.initState();
    widget.listenable.addListener(_onValueChange);
  }

  @override
  void didUpdateWidget(LateBoundValueListenableBuilder<ValueType> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.listenable != oldWidget.listenable) {
      oldWidget.listenable.removeListener(_onValueChange);
      widget.listenable.addListener(_onValueChange);
    }
  }

  @override
  void dispose() {
    widget.listenable.removeListener(_onValueChange);
    super.dispose();
  }

  void _onValueChange() {
    if (WidgetsBinding.instance.schedulerPhase != SchedulerPhase.persistentCallbacks) {
      setState(() {
        // Build with the new value.
      });
    } else {
      // We're in the middle of a build, so we can't rebuild right now. At the end of
      // this frame, schedule a rebuild so we can build with the latest value.
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        setState(() {
          // Build with the latest value.
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, widget.listenable.value, widget.child);
  }
}
