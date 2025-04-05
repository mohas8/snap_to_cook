import '../models/recipe_model.dart';

class RecipeRepository {
  
  final List<Recipe> _recipes = [
    Recipe(
      id: '1',
      name: 'Pasta Primavera',
      description: 'Delicious pasta with fresh vegetables',
      ingredients: ['pasta', 'tomatoes', 'basil', 'garlic'],
      imageUrl: 'https://example.com/pasta.jpg',
    ),
  ];

  Future<List<Recipe>> fetchRecipes() async {
    
    await Future.delayed(Duration(seconds: 1));
    return _recipes;
  }
}
