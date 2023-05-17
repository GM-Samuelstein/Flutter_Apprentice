import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fooderlich_v2/fooderlich_theme.dart';
import 'package:fooderlich_v2/models/models.dart';
import 'package:fooderlich_v2/home.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: FooderlichTheme.dark(),
      title: 'Fooderlich',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => TabManager()),
          ChangeNotifierProvider(create: (context) => GroceryManager()),
        ],
        child: const Home(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
