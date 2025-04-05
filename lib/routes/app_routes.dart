import 'package:flutter/material.dart';
import '../features/home/screens/home_screen.dart';
import '../features/input_methods/screens/image_input_screen.dart';
import '../features/input_methods/screens/voice_input_screen.dart';
import '../features/input_methods/screens/text_input_screen.dart';
import '../features/meal_planner/screens/planner_screen.dart';
import '../features/preferences/screens/dietary_preferences_screen.dart';
import '../features/shopping_list/screens/shopping_list_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String imageInput = '/image-input';
  static const String voiceInput = '/voice-input';
  static const String textInput = '/text-input';
  static const String planner = '/planner';
  static const String dietaryPreferences = '/preferences';
  static const String shoppingList = '/shopping-list';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => HomeScreen(),
    imageInput: (context) => ImageInputScreen(),
    voiceInput: (context) => VoiceInputScreen(),
    textInput: (context) => TextInputScreen(),
    planner: (context) => PlannerScreen(),
    dietaryPreferences: (context) => DietaryPreferencesScreen(),
    shoppingList: (context) => ShoppingListScreen(),
  };
}
