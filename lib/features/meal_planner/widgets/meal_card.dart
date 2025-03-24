import 'package:flutter/material.dart';

class MealCard extends StatelessWidget {
  final String mealName;

  const MealCard({Key? key, required this.mealName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(mealName),
      ),
    );
  }
}

