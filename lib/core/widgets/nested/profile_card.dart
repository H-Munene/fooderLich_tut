import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooder_lich/core/theme.dart';
import 'package:fooder_lich/core/widgets/nested/friends_panel.dart';
import 'package:fooder_lich/core/widgets/profile_picture.dart';

class ProfileCard extends StatefulWidget {
  final String user;
  final String specialty;
  final String type;
  final String item;

  const ProfileCard(
      {super.key,
      required this.user,
      required this.specialty,
      required this.type,
      required this.item});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  bool _isFavorite = false;

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: 350,
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: FooderLichTheme.cardBackgroundColor,
          image: DecorationImage(
              image: Image.asset("assets/smoothie.jpg").image,
              fit: BoxFit.cover)),
      child: Stack(
        children: [
          userDetails(widget.user, widget.specialty),
          Positioned(
            bottom: 10,
            right: 10,
            child: Text(
              widget.type,
              style: FooderLichTheme.lightTextTheme.titleLarge,
            ),
          ),
          Positioned(
            bottom: 100,
            left: -40,
            child: Transform.rotate(
              angle: -pi / 2,
              child: Text(
                widget.item,
                style: FooderLichTheme.lightTextTheme.titleLarge,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget userDetails(String user, String specialty) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 50,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ProfilePicture(
                    profileImageUrl: "assets/profile_pics/person_katz.jpeg",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user,
                        style: FooderLichTheme.lightTextTheme.bodyMedium,
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        specialty,
                        style: FooderLichTheme.lightTextTheme.labelMedium,
                      ),
                    ],
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => _toggleFavorite(),
                child: Icon(
                  _isFavorite
                      ? CupertinoIcons.heart_circle_fill
                      : CupertinoIcons.heart,
                  color: _isFavorite ? FooderLichTheme.favorite : Colors.black,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
