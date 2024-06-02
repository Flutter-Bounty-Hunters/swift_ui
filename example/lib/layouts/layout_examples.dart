import 'package:example/demo_screen.dart';
import 'package:example/infrastructure/inventory_page.dart';
import 'package:example/infrastructure/not_built_yet_page.dart';
import 'package:example/layouts/hstack.dart';
import 'package:example/layouts/vstack.dart';
import 'package:flutter/cupertino.dart';

class LayoutsPage extends StatelessWidget {
  const LayoutsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return InventoryPage(
      title: "Layouts",
      groups: [
        InventoryGroup(
          title: "VSTACK",
          items: [
            InventoryItem(
              label: "Leading Aligned",
              pageBuilder: createDemo(
                const VStackLeadingAlignedDemo(),
              ),
            ),
            InventoryItem(
              label: "Center Aligned",
              pageBuilder: createDemo(
                const VStackCenterAlignedDemo(),
              ),
            ),
            InventoryItem(
              label: "Trailing Aligned",
              pageBuilder: createDemo(
                const VStackTrailingAlignedDemo(),
              ),
            ),
            InventoryItem(
              label: "Exceeds Available Space",
              pageBuilder: createDemo(
                const VStackExceedsAvailableSpaceDemo(),
              ),
            ),
          ],
        ),
        InventoryGroup(
          title: "HSTACK",
          items: [
            InventoryItem(
              label: "Top Aligned",
              pageBuilder: createDemo(
                const HStackTopAlignedDemo(),
              ),
            ),
            InventoryItem(
              label: "Center Aligned",
              pageBuilder: createDemo(
                const HStackCenterAlignedDemo(),
              ),
            ),
            InventoryItem(
              label: "Bottom Aligned",
              pageBuilder: createDemo(
                const HStackBottomAlignedDemo(),
              ),
            ),
            InventoryItem(
              label: "Exceeds Available Space",
              pageBuilder: createDemo(
                const HStackExceedsAvailableSpaceDemo(),
              ),
            ),
          ],
        ),
        const InventoryGroup(
          title: "ZSTACK",
          items: [
            InventoryItem(
              label: "Example",
              pageBuilder: notBuiltYetPageBuilder,
            ),
          ],
        ),
        const InventoryGroup(
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
