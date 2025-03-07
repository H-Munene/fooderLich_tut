import 'package:flutter/material.dart';
import 'package:fooder_lich/core/widgets/editorial_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return EditorialCard(
            title: "The Art of Dough",
            description: "Learn to make the perfect bread",
            chef: "Ray Weinreich",
            imageUrl: "assets/food_pics/food_1.jpg",
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 20,
          );
        },
        itemCount: 3);
  }
}
