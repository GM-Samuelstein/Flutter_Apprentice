class Recipe {
  String label;
  String imageUrl;
  // TODO: Add servings and ingredients here

  Recipe(this.label, this.imageUrl);

  static List<Recipe> samples = [
    Recipe(
      'Sphaghetti and Meatballs',
      'assets/Spaghetti_and_Meatballs.jpg',
    ),
    Recipe(
      'Tomato Soup',
      'assets/Tomato_Soup.jpg',
    ),
    Recipe(
      'Grilled Cheese',
      'assets/Grilled_Cheese.jpg',
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/Chocolate_Chip_Cookies.jpg',
    ),
    Recipe(
      'Taco Salad',
      'assets/Taco_Salad.jpg',
    ),
    Recipe(
      'Hawaiian Pizza',
      'assets/Hawaiian_Pizza.jpg',
    ),
  ];
}

// TODO: Add ingredients() here