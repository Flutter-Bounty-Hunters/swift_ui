import 'package:flutter/cupertino.dart';

/// A page, which displays links to UI examples.
///
/// The purpose of this page is to provide a uniform layout for every inventory page in this
/// gallery app.
///
/// The links are divided into groups. For example an inventory of "layouts" might include
/// different sections for "VSTACK", "HSTACK", "ZSTACK", and "GRID".
///
/// When the user taps on a link within one of the groups, the [InventoryItem] associated with
/// that button pushes a new page onto the stack that's built by [InventoryItem.pageBuilder].
class InventoryPage extends StatelessWidget {
  const InventoryPage({
    super.key,
    required this.title,
    required this.groups,
  });

  final String title;
  final List<InventoryGroup> groups;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(title),
      ),
      child: SizedBox.expand(
        child: ColoredBox(
          color: CupertinoColors.systemGroupedBackground,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  for (final group in groups)
                    CupertinoListSection.insetGrouped(
                      header: group.title != null ? Text(group.title!) : null,
                      children: [
                        for (final item in group.items) //
                          _buildCategoryButton(context, item),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryButton(BuildContext context, InventoryItem item) {
    return CupertinoListTile(
      title: Text(item.label),
      trailing: const CupertinoListTileChevron(),
      onTap: () => Navigator.of(context).push(CupertinoPageRoute(builder: item.pageBuilder)),
    );
  }
}

class InventoryGroup {
  const InventoryGroup({
    this.title,
    required this.items,
  });

  final String? title;
  final List<InventoryItem> items;
}

class InventoryItem {
  const InventoryItem({
    required this.label,
    required this.pageBuilder,
  });

  final String label;
  final WidgetBuilder pageBuilder;
}
