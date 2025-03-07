// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editorial.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Editorial _$EditorialFromJson(Map<String, dynamic> json) => Editorial(
      title: json['title'] as String,
      description: json['description'] as String,
      chef: json['chef'] as String,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$EditorialToJson(Editorial instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'chef': instance.chef,
      'imageUrl': instance.imageUrl,
    };
