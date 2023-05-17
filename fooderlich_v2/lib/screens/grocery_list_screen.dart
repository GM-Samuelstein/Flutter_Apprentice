import 'package:flutter/material.dart';
import 'package:fooderlich_v2/components/components.dart';
import 'package:fooderlich_v2/models/models.dart';
import 'package:fooderlich_v2/screens/screens.dart';

class GroceryListScreen extends StatelessWidget {
  const GroceryListScreen({
    super.key,
    required this.manager,
  });

  final GroceryManager manager;

  @override
  Widget build(BuildContext context) {
    final groceryItems = manager.groceryItems;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.separated(
        itemCount: groceryItems.length,
        itemBuilder: (context, index) {
          final item = groceryItems[index];
          // TODO: Wrap in a Dismissable
          // TODO: Wrap in an Inkwell
          return GroceryTile(
            key: Key(item.id),
            item: item,
            onComplete: (change) {
              if (change != null) {
                manager.completedItem(index, change);
              }
            },
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 16.0,);
        },
      ),
    );
  }
}
