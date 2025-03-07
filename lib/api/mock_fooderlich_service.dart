import 'dart:convert';
import 'dart:ffi';
import 'package:flutter/services.dart';
import 'package:fooder_lich/models/editorial.dart';
import 'package:fooder_lich/models/friends_feed.dart';

class MockFooderlichService {



  
  Future<List<Editorial>> getExploreData() async {
    final loadExploreData =
        await rootBundle.loadString("assets/sample_data/explore_recipes.json");

    final List<dynamic> exploreData = jsonDecode(loadExploreData);

    return exploreData
        .map((editorial) =>
            Editorial.fromJson(Map<String, dynamic>.from(editorial)))
        .toList();
  }

  Future<List<FriendsFeed>> getFriendsFeed() async {
    final loadFriendsFeed = await rootBundle
        .loadString("assets/sample_data/sample_friends_feed.json");

    final friendsDecodeFeed =
        jsonDecode(loadFriendsFeed);
        
    final List<dynamic> friendsFeed =
        friendsDecodeFeed["feed"];

     return friendsFeed
        .map((individualFeed) =>
            FriendsFeed.fromJson(Map<String, dynamic>.from(individualFeed)))
        .toList();
  }
}
