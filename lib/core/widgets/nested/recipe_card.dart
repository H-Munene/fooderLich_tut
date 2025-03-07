import 'package:flutter/material.dart';
import 'package:fooder_lich/core/theme.dart';

class RecipeCard extends StatelessWidget {
  final String category;
  final String title;
  final String description;
  final String chef;
  final String imageUrl;

  const RecipeCard(
      {super.key,
      required this.title,
      required this.description,
      required this.chef,
      required this.imageUrl})
      : category = "Editor's Choice";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber
      ),
      child: Stack(children: [
        Container(
          height: 400,
          width: 350,
          decoration: BoxDecoration(
              color: FooderLichTheme.cardBackgroundColor,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: Image.asset(
                    imageUrl,
                  ).image,
                  fit: BoxFit.cover)),
        ),
        Positioned(
          left: 10,
          top: 10,
          child: Text(
            category,
            style: FooderLichTheme.darkTextTheme.labelMedium,
          ),
        ),
        Positioned(
            left: 10,
            top: 20,
            child: Text(
              title,
              style: FooderLichTheme.darkTextTheme.titleLarge,
            )),
        Positioned(
            right: 10,
            bottom: 24,
            child: Text(
              description,
              style: FooderLichTheme.lightTextTheme.bodyMedium,
            )),
        Positioned(
            right: 10,
            bottom: 10,
            child: Text(
              chef,
              style: FooderLichTheme.lightTextTheme.labelMedium,
            )),
      ]),
    );
  }
}
