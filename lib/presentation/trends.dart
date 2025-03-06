import 'package:flutter/material.dart';
import 'package:fooder_lich/models/trend_chips.dart';
import 'package:fooder_lich/core/theme.dart';

class TrendsPage extends StatefulWidget {
  const TrendsPage({super.key});

  @override
  State<TrendsPage> createState() => _TrendsPageState();
}

class _TrendsPageState extends State<TrendsPage> {
  final List<TrendChip> _trends = [
    TrendChip(trendName: 'Healthy'),
    TrendChip(trendName: 'Vegan'),
    TrendChip(trendName: 'Carrots'),
    TrendChip(trendName: 'Greens'),
    TrendChip(trendName: 'Wheat'),
    TrendChip(trendName: 'Mint'),
    TrendChip(trendName: 'Lemongrass'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset('assets/chopping_board.jpg').image,
              fit: BoxFit.cover)),
      child: _trendsLayout(),
    );
  }

  Iterable<Chip> get trendChips {
    return _trends.map((TrendChip trendChip) => Chip(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: WidgetStatePropertyAll<Color>(
            const Color.fromARGB(255, 66, 66, 66)),
        label: Text(trendChip.trendName,
            style: FooderLichTheme.darkTextTheme.bodyMedium!
                .copyWith(fontSize: 12)),
        deleteIconColor: Colors.white,
        onDeleted: () => setState(
              () {
                _trends.removeWhere((TrendChip currentTrendChip) =>
                    trendChip.id == currentTrendChip.id);
              },
            )));
  }

  Widget _trendsLayout() {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.black.withAlpha(120)),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.book,
                color: Colors.white,
                size: 40,
              ),
              Text(
                "Recipe Trends",
                style: FooderLichTheme.darkTextTheme.titleLarge,
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Wrap(
                  spacing: 12,
                  children: trendChips.toList(),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
