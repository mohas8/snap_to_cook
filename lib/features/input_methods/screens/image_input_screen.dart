import 'package:flutter/material.dart';
import '../../../core/services/image_recognition_service.dart';

class ImageInputScreen extends StatefulWidget {
  @override
  _ImageInputScreenState createState() => _ImageInputScreenState();
}

class _ImageInputScreenState extends State<ImageInputScreen> {
  final ImageRecognitionService _imageService = ImageRecognitionService();
  String _result = '';

  void _processImage() async {
    String result = await _imageService.recognizeImage('path/to/image');
    setState(() {
      _result = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Input'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_result.isEmpty ? 'No image processed yet.' : _result),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _processImage,
              child: Text('Process Image'),
            ),
          ],
        ),
      ),
    );
  }
}
