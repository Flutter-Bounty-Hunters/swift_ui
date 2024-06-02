import 'package:example/infrastructure/InventoryPage.dart';
import 'package:example/infrastructure/not_built_yet_page.dart';
import 'package:flutter/cupertino.dart';

class LayoutsPage extends StatelessWidget {
  const LayoutsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const InventoryPage(
      title: "Layouts",
      groups: [
        InventoryGroup(
          title: "VSTACK",
          items: [
            InventoryItem(
              label: "Top Aligned",
              pageBuilder: notBuiltYetPageBuilder,
            ),
            InventoryItem(
              label: "Middle Aligned",
              pageBuilder: notBuiltYetPageBuilder,
            ),
            InventoryItem(
              label: "Bottom Aligned",
              pageBuilder: notBuiltYetPageBuilder,
            ),
            InventoryItem(
              label: "Exceeds Available Space",
              pageBuilder: notBuiltYetPageBuilder,
            ),
          ],
        ),
        InventoryGroup(
          title: "HSTACK",
          items: [
            InventoryItem(
              label: "Left Aligned",
              pageBuilder: notBuiltYetPageBuilder,
            ),
            InventoryItem(
              label: "Center Aligned",
              pageBuilder: notBuiltYetPageBuilder,
            ),
            InventoryItem(
              label: "Right Aligned",
              pageBuilder: notBuiltYetPageBuilder,
            ),
            InventoryItem(
              label: "Exceeds Available Space",
              pageBuilder: notBuiltYetPageBuilder,
            ),
          ],
        ),
        InventoryGroup(
          title: "ZSTACK",
          items: [
            InventoryItem(
              label: "Example",
              pageBuilder: notBuiltYetPageBuilder,
            ),
          ],
        ),
        InventoryGroup(
          title: "GRID",
          items: [
            InventoryItem(
              label: "Fits Available Space",
              pageBuilder: notBuiltYetPageBuilder,
            ),
            InventoryItem(
              label: "Exceeds Available Space",
              pageBuilder: notBuiltYetPageBuilder,
            ),
          ],
        ),
      ],
    );
  }
}
