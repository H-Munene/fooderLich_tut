import 'package:flutter/cupertino.dart';
import 'package:fooder_lich/core/widgets/nested/friends_panel.dart';
import 'package:fooder_lich/models/friends_feed.dart';

class FriendsPosts extends StatelessWidget {
  final List<FriendsFeed> friendFeed;

  const FriendsPosts({super.key, required this.friendFeed});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: friendFeed.length,
        itemBuilder: (context, index) {
          return FriendPanel(
              profileImageUrl: friendFeed[index].profileImageUrl,
              comment: friendFeed[index].comment,
              timestamp: friendFeed[index].timestamp);
        });
  }
}
