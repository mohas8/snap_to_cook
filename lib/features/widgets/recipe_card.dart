// lib/features/home/widgets/recipe_card.dart
import 'package:flutter/material.dart';
import '../../../data/models/recipe_model.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  const RecipeCard({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.network(
          recipe.imageUrl,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        title: Text(recipe.name),
        subtitle: Text(
          recipe.description.length > 60
              ? recipe.description.substring(0, 60) + '...'
              : recipe.description,
        ),
        onTap: () {
          
        },
      ),
    );
  }
}
