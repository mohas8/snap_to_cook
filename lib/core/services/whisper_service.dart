class WhisperService {
  Future<String> transcribeAudio(String audioFilePath) async {
    
    await Future.delayed(Duration(seconds: 1));
    return "Transcribed text from audio";
  }
}
