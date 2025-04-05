// lib/data/models/user_preferences_model.dart
class UserPreferences {
  final bool isVegetarian;
  final bool isVegan;
  final bool isGlutenFree;
  final bool isHalal;

  UserPreferences({
    this.isVegetarian = false,
    this.isVegan = false,
    this.isGlutenFree = false,
    this.isHalal = false,
  });
}
