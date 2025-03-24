import 'dart:convert';
// ignore: depend_on_referenced_packages
import "package:http/http.dart" as http;
import '../constants/app_constants.dart';

class DalleService {
  Future<String> generateImage(String prompt) async {
    final url = Uri.parse('${AppConstants.baseUrl}/v1/images/generations');
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${AppConstants.apiKey}',
      },
      body: jsonEncode({
        'prompt': prompt,
        'n': 1,
        'size': '1024x1024',
      }),
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['data'][0]['url'];
    } else {
      throw Exception('Failed to generate image');
    }
  }
}
