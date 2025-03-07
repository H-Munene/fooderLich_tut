import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

part 'friends_feed.g.dart';

@JsonSerializable()
class FriendsFeed {
  final String id;
  final String profileImageUrl;
  final String comment;
  final String foodPictureUrl;
  final String timestamp;

  FriendsFeed(
      {required this.profileImageUrl,
      required this.comment,
      required this.foodPictureUrl,
      required this.timestamp})
      : id = const Uuid().v4();

  factory FriendsFeed.fromJson(Map<String, dynamic> json) =>
      _$FriendsFeedFromJson(json);

  Map<String, dynamic> toJson() => _$FriendsFeedToJson(this);
}
