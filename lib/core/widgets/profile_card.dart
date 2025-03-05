import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooder_lich/core/theme.dart';

class ProfileCard extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: 350,
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: FooderLichTheme.cardBackgroundColor,
          image: DecorationImage(
              image: AssetImage('smoothie.jpg'), fit: BoxFit.cover)),
      child: Stack(
        children: [
          userDetails(user, specialty),
          Positioned(
            bottom: 10,
            right: 10,
            child: Text(
              type,
              style: FooderLichTheme.lightTextTheme.titleLarge,
            ),
          ),
          Positioned(
            bottom: 100,
            left: -50,
            child: Transform.rotate(
              angle: -pi / 2,
              child: Text(
                item,
                style: FooderLichTheme.lightTextTheme.titleLarge,
              ),
            ),
          )
        ],
      ),
    );
  }
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
            userAvatar(user, specialty),
            Icon(
              CupertinoIcons.heart,
              color: FooderLichTheme.cardBackgroundColor,
            )
          ],
        )
      ],
    ),
  );
}

Widget userAvatar(String user, String specialty) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      CircleAvatar(
        radius: 25,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          foregroundColor: FooderLichTheme.cardBackgroundColor,
          backgroundColor: FooderLichTheme.cardBackgroundColor,
        ),
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
  );
}
