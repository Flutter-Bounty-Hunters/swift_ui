import 'package:example/collections/collection_examples.dart';
import 'package:example/controls/controls_examples.dart';
import 'package:example/infrastructure/inventory_page.dart';
import 'package:example/layouts/layout_examples.dart';
import 'package:example/motion/motion_examples.dart';
import 'package:example/primitives/primitive_examples.dart';
import 'package:example/scaffolds/scaffold_examples.dart';
import 'package:example/shapes/shapes_examples.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: replace CupertinoTabScaffold with our own Swift UI version
    return CupertinoTabScaffold(
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return const PrimitivesPage();
          case 1:
            return const LayoutsPage();
          case 2:
            return const CollectionsPage();
          case 3:
            return const ScaffoldsPage();
          case 4:
            return const OverflowPage();
          default:
            throw Exception("Unknown tab index: $index");
        }
      },
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_fill_on_circle_fill),
            label: "Primitives",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.layers_alt),
            label: "Layouts",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.table_fill),
            label: "Collections",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_lefthalf_fill),
            label: "Scaffolds",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.ellipsis),
            label: "More",
          ),
        ],
      ),
    );
  }
}

class OverflowPage extends StatelessWidget {
  const OverflowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return InventoryPage(
      title: "More",
      groups: [
        InventoryGroup(
          title: 'ADDITIONAL CATEGORIES',
          items: [
            InventoryItem(
              label: "Controls",
              pageBuilder: (context) => const ControlsPage(),
            ),
            InventoryItem(
              label: "Motion",
              pageBuilder: (context) => const MotionPage(),
            ),
            InventoryItem(
              label: "Shapes",
              pageBuilder: (context) => const ShapesPage(),
            ),
          ],
        ),
      ],
    );
  }
}
