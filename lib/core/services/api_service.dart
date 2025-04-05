import 'dart:convert';
import 'package:http/http.dart' as http;
import '../constants/app_constants.dart';

class ApiService {
  Future<dynamic> fetchRecipes() async {
    final url = Uri.parse(AppConstants.recipeApiUrl);
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load recipes');
    }
  }
}
