// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Recipe _$RecipeFromJson(Map<String, dynamic> json) => Recipe(
      dishImage: json['dishImage'] as String,
      title: json['title'] as String,
      duration: json['duration'] as String,
      source: json['source'] as String,
      information: (json['information'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$RecipeToJson(Recipe instance) => <String, dynamic>{
      'dishImage': instance.dishImage,
      'title': instance.title,
      'duration': instance.duration,
      'source': instance.source,
      'information': instance.information,
    };
