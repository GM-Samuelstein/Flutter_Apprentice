class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;

  Recipe(
    this.label,
    this.imageUrl,
    this.servings,
    this.ingredients,
    );

  static List<Recipe> samples = [
    Recipe(
      'Sphaghetti and Meatballs',
      'assets/Spaghetti_and_Meatballs.jpg',
      4,
      [
        Ingredient(1, 'box', 'Spaghetti',),
        Ingredient(4, '', 'Frozen Meatballs',),
        Ingredient(0.5, 'jar', 'sauce',),
      ],
    ),
    Recipe(
      'Tomato Soup',
      'assets/Tomato_Soup.jpg',
      2,
      [
        Ingredient(1, 'can', 'Tomato Sauce',),
      ],
    ),
    Recipe(
      'Grilled Cheese',
      'assets/Grilled_Cheese.jpg',
      1,
      [
        Ingredient(2, 'slices', 'Cheese',),
        Ingredient(2, 'slices', 'Bread',),
      ],
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/Chocolate_Chip_Cookies.jpg',
      24,
      [
        Ingredient(4, 'cups', 'flour',),
        Ingredient(2, 'cups', 'sugar',),
        Ingredient(0.5, 'cups', 'chocolate chips',),
      ],
    ),
    Recipe(
      'Taco Salad',
      'assets/Taco_Salad.jpg',
      1,
      [
        Ingredient(4, 'oz', 'nachos',),
        Ingredient(3, 'oz', 'taco meat',),
        Ingredient(0.5, 'cup', 'cheese',),
        Ingredient(0.25, 'cup', 'chooped tomatoes',),
      ],
    ),
    Recipe(
      'Hawaiian Pizza',
      'assets/Hawaiian_Pizza.jpg',
      4,
      [
        Ingredient(1, 'item', 'pizza',),
        Ingredient(1, 'cup', 'pineapple',),
        Ingredient(8, 'oz', 'ham',),
      ],
    ),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(
    this.quantity,
    this.measure,
    this.name,
  );
}
