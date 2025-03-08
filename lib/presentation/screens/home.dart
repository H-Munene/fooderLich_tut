import 'package:flutter/cupertino.dart';
import 'package:fooder_lich/api/mock_fooderlich_service.dart';
import 'package:fooder_lich/core/theme.dart';
import 'package:fooder_lich/presentation/content/friends_posts.dart';
import 'package:fooder_lich/presentation/content/recipes_of_the_day.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final MockFooderlichService _mockFooderlichService =
        MockFooderlichService();
    return FutureBuilder(
        future: _mockFooderlichService.getHomePageFeed(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final friendsFeed = snapshot.data?.friendsFeed;
            final recipesOfTheDay = snapshot.data?.recipesOfTheDay;

            if (friendsFeed != null && recipesOfTheDay != null) {
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            'Recipes of the Day! 🔍',
                            style: FooderLichTheme.lightTextTheme.titleLarge
                                ?.copyWith(fontSize: 22),
                          ),
                        ),
                      ),
                      RecipesOfTheDay(recipesOfTheDay: recipesOfTheDay),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            'Social Chefs! 👨‍🍳',
                            style: FooderLichTheme.lightTextTheme.titleLarge
                                ?.copyWith(fontSize: 22),
                          ),
                        ),
                      ),
                      FriendsPosts(friendsFeed: friendsFeed),
                    ],
                  ));
            }
            // no data
            return Center(
              child: Text(
                'No recipes. No friends feed',
                style: FooderLichTheme.lightTextTheme.headlineSmall,
              ),
            );
          } else {
            return const Center(child: CupertinoActivityIndicator());
          }
        });
  }
}