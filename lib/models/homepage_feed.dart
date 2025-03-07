import 'package:fooder_lich/models/editorial.dart';
import 'package:fooder_lich/models/friends_feed.dart';

class HomepageFeed {
  final List<Editorial> editorials;
  final List<FriendsFeed> friendsFeed;

  HomepageFeed({required this.editorials, required this.friendsFeed});
}
