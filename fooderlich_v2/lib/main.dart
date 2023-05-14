import 'package:flutter/material.dart';

import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: FooderlichTheme.dark(),
      title: 'Fooderlich',
      // TODO: Replace with MultiProvider
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
