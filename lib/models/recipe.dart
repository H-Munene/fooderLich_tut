import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

part 'recipe.g.dart';

@JsonSerializable()
class Recipe {
  final String id;
  final String dishImage;
  final String title;
  final String duration;
  final String source;
  final List<String> information;

  Recipe(
      {required this.dishImage,
      required this.title,
      required this.duration,
      required this.source,
      required this.information})
      : id = const Uuid().v4();
}
