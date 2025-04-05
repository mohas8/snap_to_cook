import 'package:flutter/material.dart';
import '../../data/models/user_preferences_model.dart';

class DietaryPreferencesScreen extends StatefulWidget {
  @override
  _DietaryPreferencesScreenState createState() => _DietaryPreferencesScreenState();
}

class _DietaryPreferencesScreenState extends State<DietaryPreferencesScreen> {
  UserPreferences _preferences = UserPreferences();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dietary Preferences'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SwitchListTile(
              title: Text('Vegetarian'),
              value: _preferences.isVegetarian,
              onChanged: (value) {
                setState(() {
                  _preferences = UserPreferences(
                    isVegetarian: value,
                    isVegan: _preferences.isVegan,
                    isGlutenFree: _preferences.isGlutenFree,
                    isHalal: _preferences.isHalal,
                  );
                });
              },
            ),
            SwitchListTile(
              title: Text('Vegan'),
              value: _preferences.isVegan,
              onChanged: (value) {
                setState(() {
                  _preferences = UserPreferences(
                    isVegetarian: _preferences.isVegetarian,
                    isVegan: value,
                    isGlutenFree: _preferences.isGlutenFree,
                    isHalal: _preferences.isHalal,
                  );
                });
              },
            ),
            SwitchListTile(
              title: Text('Gluten Free'),
              value: _preferences.isGlutenFree,
              onChanged: (value) {
                setState(() {
                  _preferences = UserPreferences(
                    isVegetarian: _preferences.isVegetarian,
                    isVegan: _preferences.isVegan,
                    isGlutenFree: value,
                    isHalal: _preferences.isHalal,
                  );
                });
              },
            ),
            SwitchListTile(
              title: Text('Halal'),
              value: _preferences.isHalal,
              onChanged: (value) {
                setState(() {
                  _preferences = UserPreferences(
                    isVegetarian: _preferences.isVegetarian,
                    isVegan: _preferences.isVegan,
                    isGlutenFree: _preferences.isGlutenFree,
                    isHalal: value,
                  );
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
