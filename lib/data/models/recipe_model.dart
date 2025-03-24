class Recipe {
  final String id;
  final String name;
  final String description;
  final List<String> ingredients;
  final String imageUrl;

  Recipe({
    required this.id,
    required this.name,
    required this.description,
    required this.ingredients,
    required this.imageUrl,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      ingredients: List<String>.from(json['ingredients'] ?? []),
      imageUrl: json['imageUrl'] ?? '',
    );
  }
}
