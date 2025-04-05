import 'dart:convert';
import 'package:http/http.dart' as http;
import '../constants/app_constants.dart';

class OpenAIService {
  Future<String> generateRecipe(String prompt) async {
    final url = Uri.parse('${AppConstants.baseUrl}/v1/engines/davinci/completions');
    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${AppConstants.apiKey}',
        },
        body: jsonEncode({
          'prompt': prompt,
          'max_tokens': 150,
        }),
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data['choices'][0]['text'];
      } else {
        return 'Error: ${response.statusCode} ${response.reasonPhrase}';
      }
    } catch (e) {
      return 'Exception: $e';
    }
  }
}
