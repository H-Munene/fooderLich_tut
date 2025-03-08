import 'package:flutter/material.dart';
import 'package:fooder_lich/core/widgets/nested/friends_panel.dart';
import 'package:fooder_lich/models/friends_feed.dart';

class FriendsPosts extends StatelessWidget {
  final List<FriendsFeed> friendsFeed;

  const FriendsPosts({super.key, required this.friendsFeed});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: friendsFeed.length,
        itemBuilder: (context, index) {
          return FriendPanel(
              profileImageUrl: friendsFeed[index].profileImageUrl,
              comment: friendsFeed[index].comment,
              timestamp: friendsFeed[index].timestamp);
        },
        separatorBuilder: (context, index) => Divider(
              indent: 20,
              endIndent: 20,
            ));
  }
}




      
//           ListView.separated(
//             itemCount: friendsFeed.length,
//             shrinkWrap: true,
//             itemBuilder: (context, index) {
//               return FriendPanel(
//                   profileImageUrl: friendsFeed[index].profileImageUrl,
//                   comment: friendsFeed[index].comment,
//                   timestamp: friendsFeed[index].timestamp);
//             },
//             separatorBuilder: (context, index) {
//               return Divider();
//             },
//           ),