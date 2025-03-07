import 'package:flutter/material.dart';
import 'package:fooder_lich/core/theme.dart';
import 'package:fooder_lich/core/widgets/profile_picture.dart';

class FriendPanel extends StatelessWidget {
  final String profileImageUrl;
  final String comment;
  final String timestamp;

  const FriendPanel(
      {super.key,
      required this.profileImageUrl,
      required this.comment,
      required this.timestamp});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfilePicture(
            profileImageUrl: profileImageUrl,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  comment,
                  style: FooderLichTheme.lightTextTheme.bodyMedium
                      ?.copyWith(color: Colors.grey),
                ),
                Text(
                  "$timestamp mins ago",
                  style: FooderLichTheme.lightTextTheme.bodyMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
