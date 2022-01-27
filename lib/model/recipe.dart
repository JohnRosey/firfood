import 'package:duration/duration.dart';

enum RecipeType {
  plat,
  boisson,
}

class Recipe {
  final String id;
  final RecipeType type;
  final String name;
  final Duration duration;
  final List<String> ingredients;
  final List<String> preparation;
  final String imageURL;
  final String country;

  const Recipe({
    required this.id,
    required this.type,
    required this.name,
    required this.duration,
    required this.ingredients,
    required this.preparation,
    required this.imageURL,
    required this.country,
  });

  String get getDurationString => prettyDuration(this.duration);
}
