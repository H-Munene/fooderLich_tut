import 'package:uuid/uuid.dart';

class Recipe {
  final String id;
  final String label;
  final String imageUrl;

  Recipe({required this.label, required this.imageUrl}) : id = Uuid().v4();

  //get recipes
  List<Recipe> get samples {
    return _samples;
  }

  static final List<Recipe> _samples = [
    Recipe(
      label: 'Spaghetti and Meatballs',
      imageUrl: 'assets/food_pics/food_1.jpg',
    ),
    Recipe(
      label: 'Tomato Soup',
      imageUrl: 'assets/food_pics/food_1.jpg',
    ),
    Recipe(
      label: 'Grilled Cheese',
      imageUrl: 'assets/food_pics/food_1.jpg',
    ),
    Recipe(
      label: 'Chocolate Chip Cookies',
      imageUrl: 'assets/food_pics/food_1.jpg',
    ),
    Recipe(
      label: 'Taco Salad',
      imageUrl: 'assets/food_pics/food_1.jpg',
    ),
    Recipe(
      label: 'Hawaiian Pizza',
      imageUrl: 'assets/food_pics/food_1.jpg',
    ),
  ];
}
