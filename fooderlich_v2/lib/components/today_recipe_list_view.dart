import 'package:flutter/material.dart';
import 'package:fooderlich_v2/components/components.dart';
import 'package:fooderlich_v2/models/models.dart';

class TodayRecipeListView extends StatelessWidget {
  const TodayRecipeListView({
    super.key,
    required this.recipes,
  });

  final List<ExploreRecipe> recipes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        top: 16,
        right: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'Recipes of the Day',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 400,
            color: Colors.transparent,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final recipe = recipes[index];
                return buildCard(recipe);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 16,
                );
              },
              itemCount: recipes.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(ExploreRecipe recipe) {
    if (recipe.cardType == RecipeCardType.card1) {
      return Card1(
        recipe: recipe,
      );
    } else if (recipe.cardType == RecipeCardType.card2) {
      return Card2(
        recipe: recipe,
      );
    } else if (recipe.cardType == RecipeCardType.card3) {
      return Card3(
        recipe: recipe,
      );
    } else {
      throw Exception("This Card doesn't exist yet");
    }
  }
}
