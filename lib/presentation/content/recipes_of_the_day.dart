import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooder_lich/core/theme.dart';
import 'package:fooder_lich/core/widgets/nested/recipe_card.dart';
import 'package:fooder_lich/models/editorial.dart';

class RecipesOfTheDay extends StatelessWidget {
  final List<Editorial> recipesOfTheDay;
  const RecipesOfTheDay({super.key, required this.recipesOfTheDay});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recipes of the day! 🔍",
            style: FooderLichTheme.lightTextTheme.titleLarge,
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            //constrains the listview
            height: 400,
            width: 450,
            
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (contexet, index) {
                  return RecipeCard(
                      title: recipesOfTheDay[index].title,
                      description: recipesOfTheDay[index].description,
                      chef: recipesOfTheDay[index].chef,
                      imageUrl: recipesOfTheDay[index].imageUrl);
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 8);
                },
                itemCount: recipesOfTheDay.length),
          ),
        ],
      ),
    );
  }
}
