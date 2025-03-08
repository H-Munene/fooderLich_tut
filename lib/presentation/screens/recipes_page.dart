import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooder_lich/api/mock_fooderlich_service.dart';
import 'package:fooder_lich/core/theme.dart';
import 'package:fooder_lich/presentation/content/recipe_feed.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    final MockFooderlichService _mockFooderlichService =
        MockFooderlichService();

    return FutureBuilder(
        future: _mockFooderlichService.getRecipeFeed(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final recipes = snapshot.data?.recipes;
            if (recipes!.isNotEmpty) {
              return CustomScrollView(
                slivers: [
                  RecipeFeedGrid(recipes: recipes),
                ],
              );
            }
            //empty list
            else {
              return Center(
                child: Text(
                  'No recipe feed',
                  style: FooderLichTheme.lightTextTheme.bodyMedium,
                ),
              );
            }
          } else {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }
        });
  }
}
