import 'package:flutter/material.dart';
import 'package:fooder_lich/core/widgets/editorialCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: EditorialCard(
          category: "Editor's Choice",
          title: "The Art of Dough",
          description: "Learn to make the perfect bread",
          chef: "Ray Weinreich"),
    );
  }
}
