import 'package:example/infrastructure/InventoryPage.dart';
import 'package:example/infrastructure/not_built_yet_page.dart';
import 'package:flutter/cupertino.dart';

class ControlsPage extends StatelessWidget {
  const ControlsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const InventoryPage(
      title: "Controls",
      groups: [
        InventoryGroup(
          items: [
            InventoryItem(
              label: "Buttons",
              pageBuilder: notBuiltYetPageBuilder,
            ),
            InventoryItem(
              label: "Switches",
              pageBuilder: notBuiltYetPageBuilder,
            ),
          ],
        ),
      ],
    );
  }
}
