import 'package:example/demo_screen.dart';
import 'package:example/infrastructure/inventory_page.dart';
import 'package:example/shapes/rectangle.dart';
import 'package:flutter/cupertino.dart';

import 'ellipse.dart';

class ShapesPage extends StatelessWidget {
  const ShapesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return InventoryPage(
      title: "Shapes",
      groups: [
        InventoryGroup(
          items: [
            InventoryItem(
              label: "Rectangle",
              pageBuilder: createDemo(const RectangleDemo()),
            ),
            InventoryItem(
              label: "Ellipse",
              pageBuilder: createDemo(const EllipseDemo()),
            ),
          ],
        ),
      ],
    );
  }
}
