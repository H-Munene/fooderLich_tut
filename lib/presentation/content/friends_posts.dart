import 'package:flutter/cupertino.dart';
import 'package:fooder_lich/core/theme.dart';
import 'package:fooder_lich/core/widgets/nested/friends_panel.dart';
import 'package:fooder_lich/models/friends_feed.dart';

class FriendsPosts extends StatelessWidget {
  final List<FriendsFeed> friendFeed;

  const FriendsPosts({super.key, required this.friendFeed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      
        children: [
          Text(
              "Social Chefs! 👨‍🍳",
              style: FooderLichTheme.lightTextTheme.titleLarge,
            ),
      
          Expanded(
            child: ListView.builder(
                itemCount: friendFeed.length,
                itemBuilder: (context, index) {
                  return FriendPanel(
                      profileImageUrl: friendFeed[index].profileImageUrl,
                      comment: friendFeed[index].comment,
                      timestamp: friendFeed[index].timestamp);
                }),
          ),
        ],
      ),
    );
  }
}
