import 'package:flutter/material.dart';
import 'package:fooder_lich/core/theme.dart';

class ProfilePicture extends StatelessWidget {
  final String profileImageUrl;

  const ProfilePicture({super.key, required this.profileImageUrl});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 15,
        foregroundImage: Image.asset(profileImageUrl).image,
        backgroundColor: FooderLichTheme.cardBackgroundColor,
      ),
    );
  }
}
