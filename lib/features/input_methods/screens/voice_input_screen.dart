import 'package:flutter/material.dart';
import '../../../core/services/whisper_service.dart';

class VoiceInputScreen extends StatefulWidget {
  @override
  _VoiceInputScreenState createState() => _VoiceInputScreenState();
}

class _VoiceInputScreenState extends State<VoiceInputScreen> {
  final WhisperService _whisperService = WhisperService();
  String _transcription = '';

  void _transcribe() async {
    String text = await _whisperService.transcribeAudio('path/to/audio');
    setState(() {
      _transcription = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Voice Input'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_transcription.isEmpty ? 'No voice input processed yet.' : _transcription),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _transcribe,
              child: Text('Transcribe Audio'),
            ),
          ],
        ),
      ),
    );
  }
}
