import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooder_lich/core/widgets/nested/recipe_editorial_card.dart';
import 'package:fooder_lich/models/editorial.dart';

class RecipesOfTheDay extends StatelessWidget {
  final List<Editorial> recipesOfTheDay;
  const RecipesOfTheDay({super.key, required this.recipesOfTheDay});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 350,
        child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (contexet, index) {
              return RecipeEditorialCard(
                  title: recipesOfTheDay[index].title,
                  description: recipesOfTheDay[index].description,
                  chef: recipesOfTheDay[index].chef,
                  imageUrl: recipesOfTheDay[index].imageUrl);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(width: 8);
            },
            itemCount: recipesOfTheDay.length),
      ),
    );
  }
}
