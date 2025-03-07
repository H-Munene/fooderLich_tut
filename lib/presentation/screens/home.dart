import 'package:flutter/cupertino.dart';
import 'package:fooder_lich/api/mock_fooderlich_service.dart';
import 'package:fooder_lich/core/theme.dart';
import 'package:fooder_lich/core/widgets/nested/friends_panel.dart';
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
            final friendsPosts = snapshot.data?.friendsFeed;
            final recipesOfTheDay = snapshot.data?.recipesOfTheDay;

            //TODO: unified list view
            if (friendsPosts != null && recipesOfTheDay != null) {
              return RecipesOfTheDay(recipesOfTheDay: recipesOfTheDay);
              // return FriendsPosts(friendFeed: friendsPosts);
            }
            // no data
            return Center(
              child: Text(
                "No recipes. No friends feed",
                style: FooderLichTheme.lightTextTheme.headlineSmall,
              ),
            );
          } else {
            return Center(child: CupertinoActivityIndicator());
          }
        });
  }
}
