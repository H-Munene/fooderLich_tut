import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooder_lich/api/mock_fooderlich_service.dart';
import 'package:fooder_lich/core/widgets/nested/editorial_card.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final MockFooderlichService _mockFooderlichService = MockFooderlichService();
  late var _editiorials = [];

  @override
  void initState() {
    getEditorials();
    debugPrint(_editiorials.toString());
    super.initState();
  }

  void getEditorials() async {
    _editiorials = await _mockFooderlichService.getExploreData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _mockFooderlichService.getExploreData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final recipes = snapshot.data ?? [];

            return Padding(
              padding: EdgeInsets.all(5),
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final editorialCard = recipes[index];
                    return EditorialCard(
                        title: editorialCard.title,
                        description: editorialCard.description,
                        chef: editorialCard.chef,
                        imageUrl: editorialCard.imageUrl);
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 15);
                  },
                  itemCount: recipes.length),
            );
          } else {
            return CupertinoActivityIndicator();
          }
        });
  }
}
