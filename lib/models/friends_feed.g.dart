// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friends_feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FriendsFeed _$FriendsFeedFromJson(Map<String, dynamic> json) => FriendsFeed(
      profileImageUrl: json['profileImageUrl'] as String,
      comment: json['comment'] as String,
      foodPictureUrl: json['foodPictureUrl'] as String,
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$FriendsFeedToJson(FriendsFeed instance) =>
    <String, dynamic>{
      'profileImageUrl': instance.profileImageUrl,
      'comment': instance.comment,
      'foodPictureUrl': instance.foodPictureUrl,
      'timestamp': instance.timestamp,
    };
