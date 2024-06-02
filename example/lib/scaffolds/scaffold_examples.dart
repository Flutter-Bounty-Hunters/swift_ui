import 'package:example/infrastructure/InventoryPage.dart';
import 'package:example/infrastructure/not_built_yet_page.dart';
import 'package:flutter/cupertino.dart';

class ScaffoldsPage extends StatelessWidget {
  const ScaffoldsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const InventoryPage(
      title: "Scaffolds",
      groups: [
        InventoryGroup(
          title: "Navigation",
          items: [
            InventoryItem(
              label: "NavigationStack",
              pageBuilder: notBuiltYetPageBuilder,
            ),
          ],
        ),
      ],
    );
  }
}
