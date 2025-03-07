import 'package:fooder_lich/models/editorial.dart';
import 'package:fooder_lich/models/friends_feed.dart';

class HomepageFeed {
  final List<Editorial> recipesOfTheDay;
  final List<FriendsFeed> friendsFeed;

  HomepageFeed({required this.recipesOfTheDay, required this.friendsFeed});
}
