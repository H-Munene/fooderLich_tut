import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:fooder_lich/models/editorial.dart';
import 'package:fooder_lich/models/friends_feed.dart';
import 'package:fooder_lich/models/homepage_feed.dart';
import 'package:fooder_lich/models/recipe.dart';
import 'package:fooder_lich/models/recipe_feed.dart';

class MockFooderlichService {
  Future<HomepageFeed> getHomePageFeed() async {
    final _recipesOfTheDay = await _getRecipesOfTheDay();
    final _friendsFeed = await _getFriendsFeed();

    return HomepageFeed(
        recipesOfTheDay: _recipesOfTheDay, friendsFeed: _friendsFeed);
  }

  Future<RecipeFeed> getRecipeFeed() async {
    final _recipeFeed = await _getRecipes();

    return RecipeFeed(recipes: _recipeFeed);
  }

  Future<List<Editorial>> _getRecipesOfTheDay() async {
    final loadExploreData =
        await rootBundle.loadString('assets/sample_data/explore_recipes.json');

    final List<dynamic> exploreData = jsonDecode(loadExploreData);

    return exploreData
        .map((editorial) =>
            Editorial.fromJson(Map<String, dynamic>.from(editorial)))
        .toList();
  }

  Future<List<FriendsFeed>> _getFriendsFeed() async {
    final loadFriendsFeed = await rootBundle
        .loadString('assets/sample_data/sample_friends_feed.json');

    final friendsDecodeFeed = jsonDecode(loadFriendsFeed);

    final List<dynamic> friendsFeed = friendsDecodeFeed['feed'];

    return friendsFeed
        .map((individualFeed) =>
            FriendsFeed.fromJson(Map<String, dynamic>.from(individualFeed)))
        .toList();
  }

  Future<List<Recipe>> _getRecipes() async {
    final loadRecipe =
        await rootBundle.loadString('assets/sample_data/sample_recipes.json');
    final recipeDecoded = jsonDecode(loadRecipe);
    final List<dynamic> recipes = recipeDecoded['recipes'];

    return recipes
        .map((recipe) => Recipe.fromJson(Map<String, dynamic>.from(recipe)))
        .toList();
  }
}
