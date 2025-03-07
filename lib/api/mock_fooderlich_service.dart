import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:fooder_lich/models/editorial.dart';

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
}
