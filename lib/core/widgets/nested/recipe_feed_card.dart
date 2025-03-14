import 'package:flutter/cupertino.dart';
import 'package:fooder_lich/core/theme.dart';

class RecipeFeedCard extends StatelessWidget {
  final String title;
  final String duration;
  final String dishImage;
  final bool isFavorite;
  final void Function() toggleFavorite;

  const RecipeFeedCard(
      {super.key,
      required this.title,
      required this.duration,
      required this.dishImage,
      required this.toggleFavorite,
      required this.isFavorite});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 170,
          width: 300,
          decoration: BoxDecoration(
              color: FooderLichTheme.cardBackgroundColor,
              image: DecorationImage(
                  image: Image.asset(dishImage).image, fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(12)),
          //TODO: use provider / bloc -> if in list of favorited or else
          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.end,
          //   children: [
          //     GestureDetector(
          //       onTap: toggleFavorite,
          //       child: isFavorite
          //           ? Icon(
          //               CupertinoIcons.heart_fill,
          //               color: FooderLichTheme.favorite,
          //             )
          //           : const Icon(CupertinoIcons.heart),
          //     )
          //   ],
          // ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(title, style: FooderLichTheme.lightTextTheme.labelMedium),
        Text(duration, style: FooderLichTheme.lightTextTheme.labelMedium),
      ],
    );
  }
}
