class Recipe {
  final String title;
  final String description;
  final int time; //in minutes
  final int servings;
  final String cuisine;
  final List<String> ingredients;
  final List<String> instructions;

  Recipe({
    required this.title,
    required this.description,
    required this.time,
    required this.servings,
    required this.cuisine,
    required this.ingredients,
    required this.instructions,
  });

  // Create Recipe from JSON
  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      title: json['title'],
      description: json['description'],
      time: json['time'],
      servings: json['servings'],
      cuisine: json['cuisine'],
      ingredients: json['ingredients'],
      instructions: json['instructions'],
    );
  }

  // Create JSON from Recipe. Just in case
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'time': time,
      'ingredients': ingredients,
      'cuisine': cuisine,
      'servings': servings,
      'instructions': instructions,
    };
  }
}
