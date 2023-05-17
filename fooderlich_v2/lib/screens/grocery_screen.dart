import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fooderlich_v2/screens/screens.dart';
import 'package:fooderlich_v2/models/models.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildGroceryScreen(),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            final manager = Provider.of<GroceryManager>(context, listen: false);
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => GroceryItemScreen(
                      onCreate: (item) {
                        manager.addItem(item);
                        Navigator.pop(context);
                      },
                      onUpdate: (item) {})),
            );
          }),
    );
  }

  Widget buildGroceryScreen() {
    return Consumer<GroceryManager>(builder: (context, manager, child) {
      if (manager.groceryItems.isNotEmpty) {
        return GroceryListScreen(manager: manager,);
      } else {
        return const EmptyGroceryScreen();
      }
    });
  }
}
