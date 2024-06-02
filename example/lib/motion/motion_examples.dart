import 'package:example/infrastructure/InventoryPage.dart';
import 'package:example/infrastructure/not_built_yet_page.dart';
import 'package:flutter/cupertino.dart';

class MotionPage extends StatelessWidget {
  const MotionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const InventoryPage(
      title: "Motion",
      groups: [
        InventoryGroup(
          items: [
            InventoryItem(
              label: "Springs",
              pageBuilder: notBuiltYetPageBuilder,
            ),
          ],
        ),
      ],
    );
  }
}
