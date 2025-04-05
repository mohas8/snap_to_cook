import 'package:snap_to_cook/data/models/recipe_model.dart';
import '../../core/services/api_service.dart';

class RecipeRepository {
  final ApiService _apiService = ApiService();

  Future<List<Recipe>> fetchRecipes() async {
    final jsonData = await _apiService.fetchRecipes();
    if (jsonData['meals'] != null) {
      List<dynamic> meals = jsonData['meals'];
      return meals.map((meal) => Recipe.fromJson(meal)).toList();
    } else {
      return [];
    }
  }
}
