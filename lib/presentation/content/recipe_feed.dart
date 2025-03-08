import 'package:flutter/material.dart';
import 'package:fooder_lich/core/widgets/nested/recipe_feed_card.dart';
import 'package:fooder_lich/models/recipe.dart';

class RecipeFeedGrid extends StatefulWidget {
  final List<Recipe> recipes;

  const RecipeFeedGrid({super.key, required this.recipes});

  @override
  State<RecipeFeedGrid> createState() => _RecipeFeedGridState();
}

class _RecipeFeedGridState extends State<RecipeFeedGrid> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        delegate: SliverChildBuilderDelegate(childCount: widget.recipes.length,
            (context, index) {
          return RecipeFeedCard(
            title: widget.recipes[index].title,
            duration: widget.recipes[index].duration,
            dishImage: widget.recipes[index].dishImage,
            toggleFavorite: toggleFavorite,
            isFavorite: isFavorite,
          );
        }),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10.0, crossAxisSpacing: 10.0));
  }
}
