import 'package:uuid/uuid.dart';

class Recipe {
  final String id;
  final String label;
  final String imageUrl;

  Recipe(this.label, this.imageUrl) : id = const Uuid().v4();

}
