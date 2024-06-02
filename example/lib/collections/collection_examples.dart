import 'package:example/infrastructure/inventory_page.dart';
import 'package:example/infrastructure/not_built_yet_page.dart';
import 'package:flutter/cupertino.dart';

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const InventoryPage(
      title: "Collections",
      groups: [
        InventoryGroup(
          title: "LISTS",
          items: [
            InventoryItem(
              label: "No Sections",
              pageBuilder: notBuiltYetPageBuilder,
            ),
            InventoryItem(
              label: "With Section (plain)",
              pageBuilder: notBuiltYetPageBuilder,
            ),
            InventoryItem(
              label: "With Sections (grouped)",
              pageBuilder: notBuiltYetPageBuilder,
            ),
            InventoryItem(
              label: "Empty",
              pageBuilder: notBuiltYetPageBuilder,
            ),
          ],
        ),
        InventoryGroup(
          title: "TABLES",
          items: [
            InventoryItem(
              label: "Static Rows",
              pageBuilder: notBuiltYetPageBuilder,
            ),
            InventoryItem(
              label: "Sortable",
              pageBuilder: notBuiltYetPageBuilder,
            ),
            InventoryItem(
              label: "Empty",
              pageBuilder: notBuiltYetPageBuilder,
            ),
          ],
        ),
      ],
    );
  }
}
