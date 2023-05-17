import 'package:flutter/material.dart';
import 'package:fooderlich_v2/models/models.dart';
import 'package:fooderlich_v2/api/mock_fooderlich_service.dart';
import 'package:fooderlich_v2/components/components.dart';

class RecipeScreen extends StatelessWidget {
  RecipeScreen({super.key});

  final exploreService = MockFooderlichService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: exploreService.getRecipes(),
      builder: (context, AsyncSnapshot<List<SimpleRecipe>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return RecipesGridView(recipes: snapshot.data ?? [],);
        } else {
          return const Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}
