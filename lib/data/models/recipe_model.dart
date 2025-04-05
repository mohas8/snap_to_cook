class Recipe {
  final String id;
  final String name;
  final String description;
  final String imageUrl;

  Recipe({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      id: json['idMeal'] ?? '',
      name: json['strMeal'] ?? '',
      description: json['strInstructions'] ?? '',
      imageUrl: json['strMealThumb'] ?? '',
    );
  }
}
