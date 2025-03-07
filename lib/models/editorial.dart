import 'package:json_annotation/json_annotation.dart';

part 'editorial.g.dart';

@JsonSerializable()
class Editorial {
  final String title;
  final String description;
  final String chef;
  final String imageUrl;

  Editorial(
      {required this.title,
      required this.description,
      required this.chef,
      required this.imageUrl});

  factory Editorial.fromJson(Map<String, dynamic> json) =>
      _$EditorialFromJson(json);

  Map<String, dynamic> toJson() => _$EditorialToJson(this);
}
