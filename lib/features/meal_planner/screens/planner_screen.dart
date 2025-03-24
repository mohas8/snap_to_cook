import 'package:flutter/material.dart';
import '../widgets/meal_card.dart';

class PlannerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Example meal list.
    final List<String> meals = ['Breakfast', 'Lunch', 'Dinner'];

    return Scaffold(
      appBar: AppBar(
        title: Text('Meal Planner'),
      ),
      body: ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) {
          return MealCard(mealName: meals[index]);
        },
      ),
    );
  }
}
