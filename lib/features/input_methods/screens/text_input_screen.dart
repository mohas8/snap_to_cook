import 'package:flutter/material.dart';
import '../../../core/services/openai_service.dart';

class TextInputScreen extends StatefulWidget {
  @override
  _TextInputScreenState createState() => _TextInputScreenState();
}

class _TextInputScreenState extends State<TextInputScreen> {
  final TextEditingController _controller = TextEditingController();
  final OpenAIService _openAIService = OpenAIService();
  String _recipe = '';

  void _generateRecipe() async {
    String prompt = _controller.text;
    String result = await _openAIService.generateRecipe(prompt);
    setState(() {
      _recipe = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Input'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter your ingredients or recipe request',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _generateRecipe,
              child: Text('Generate Recipe'),
            ),
            SizedBox(height: 16),
            Text(_recipe),
          ],
        ),
      ),
    );
  }
}
