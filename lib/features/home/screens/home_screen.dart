import 'package:flutter/material.dart';
import '../../../data/models/recipe_model.dart';
import '../../../data/repository/recipe_repository.dart';
import '../widgets/recipe_card.dart'; 

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
 
class _HomeScreenState extends State<HomeScreen> {
  final RecipeRepository _repository = RecipeRepository();
  late Future<List<Recipe>> _recipesFuture;
 
  @override
  void initState() {
    super.initState();
    _recipesFuture = _repository.fetchRecipes();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snap to Cook Home'),
      ),
      body: FutureBuilder<List<Recipe>>(
        future: _recipesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error fetching recipes'));
          }
          final recipes = snapshot.data!;
          return ListView.builder(
            itemCount: recipes.length,
            itemBuilder: (context, index) {
              return RecipeCard(recipe: recipes[index]);
            },
          );
        },
      ),
    );
  }
}
