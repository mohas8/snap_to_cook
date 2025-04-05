class ImageRecognitionService {
  Future<String> recognizeImage(String imagePath) async {
    
    await Future.delayed(Duration(seconds: 1));
    return "Identified ingredients from image";
  }
}
