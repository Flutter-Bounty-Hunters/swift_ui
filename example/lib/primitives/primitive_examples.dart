import 'package:example/infrastructure/inventory_page.dart';
import 'package:example/infrastructure/not_built_yet_page.dart';
import 'package:flutter/cupertino.dart';

class PrimitivesPage extends StatelessWidget {
  const PrimitivesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const InventoryPage(
      title: "Primitives",
      groups: [
        InventoryGroup(
          title: "TEXT",
          items: [
            InventoryItem(
              label: "All Styles",
              pageBuilder: notBuiltYetPageBuilder,
            ),
          ],
        ),
        InventoryGroup(
          title: "IMAGE",
          items: [
            InventoryItem(
              label: "Natural Size",
              pageBuilder: notBuiltYetPageBuilder,
            ),
            InventoryItem(
              label: "Shrunk Smaller",
              pageBuilder: notBuiltYetPageBuilder,
            ),
            InventoryItem(
              label: "Expanded Larger",
              pageBuilder: notBuiltYetPageBuilder,
            ),
            InventoryItem(
              label: "Shape Clipped",
              pageBuilder: notBuiltYetPageBuilder,
            ),
            InventoryItem(
              label: "From Network",
              pageBuilder: notBuiltYetPageBuilder,
            ),
          ],
        ),
        InventoryGroup(
          title: "FRAME",
          items: [
            InventoryItem(
              label: "Static Size",
              pageBuilder: notBuiltYetPageBuilder,
            ),
          ],
        ),
      ],
    );
  }
}
