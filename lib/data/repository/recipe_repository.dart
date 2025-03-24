import '../models/recipe_model.dart';

class RecipeRepository {
  // Dummy list of recipes for example purposes.
  final List<Recipe> _recipes = [
    Recipe(
      id: '1',
      name: 'Pasta Primavera',
      description: 'Delicious pasta with fresh vegetables',
      ingredients: ['pasta', 'tomatoes', 'basil', 'garlic'],
      imageUrl: 'https://example.com/pasta.jpg',
    ),
    // Add more recipes as needed.
  ];

  Future<List<Recipe>> fetchRecipes() async {
    // Simulate a network delay.
    await Future.delayed(Duration(seconds: 1));
    return _recipes;
  }
}
