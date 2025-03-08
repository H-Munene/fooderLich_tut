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
      required this.toggleFavorite, required this.isFavorite});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: FooderLichTheme.cardBackgroundColor,
              image: DecorationImage(image: Image.asset(dishImage).image),
              borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              GestureDetector(
                onTap: toggleFavorite,
                child: isFavorite
                    ? Icon(
                        CupertinoIcons.heart,
                        color: FooderLichTheme.favorite,
                      )
                    : const Icon(CupertinoIcons.heart),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(title, style: FooderLichTheme.lightTextTheme.bodyMedium),
        Text(duration, style: FooderLichTheme.lightTextTheme.bodyMedium),
      ],
    );
  }
}
