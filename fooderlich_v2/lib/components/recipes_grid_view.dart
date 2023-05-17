import 'package:flutter/material.dart';
import 'package:fooderlich_v2/components/components.dart';
import 'package:fooderlich_v2/models/models.dart';

class RecipesGridView extends StatelessWidget {
  const RecipesGridView({
    super.key,
    required this.recipes,
  });

  final List<SimpleRecipe> recipes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      child: GridView.builder(
        itemCount: recipes.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (context, index) {
          final simpleRecipe = recipes[index];
          return RecipeThumbnail(recipe: simpleRecipe);
        },
      ),
    );
  }
}
