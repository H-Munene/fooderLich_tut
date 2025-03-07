import 'package:flutter/cupertino.dart';
import 'package:fooder_lich/core/widgets/nested/recipe_card.dart';
import 'package:fooder_lich/models/editorial.dart';

class RecipesOfTheDay extends StatelessWidget {
  final List<Editorial> recipesOfTheDay;
  const RecipesOfTheDay({super.key, required this.recipesOfTheDay});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: recipesOfTheDay.length,
        itemBuilder: (context, index) {
          return RecipeCard(
              title: recipesOfTheDay[index].title,
              description: recipesOfTheDay[index].description,
              chef: recipesOfTheDay[index].chef,
              imageUrl: recipesOfTheDay[index].imageUrl);
        });
  }
}
