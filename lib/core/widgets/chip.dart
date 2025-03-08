import 'package:flutter/material.dart';
import 'package:fooder_lich/core/theme.dart';

class CustomChip extends StatelessWidget {
  final String chipName;
  final Function()? onDeleted;

  const CustomChip({super.key, required this.chipName, this.onDeleted});

  @override
  Widget build(BuildContext context) {
    return Chip(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: const WidgetStatePropertyAll<Color>(
            Color.fromARGB(255, 66, 66, 66)),
        label: Text(chipName,
            style: FooderLichTheme.darkTextTheme.bodyMedium!
                .copyWith(fontSize: 12)),
        deleteIconColor: Colors.white,
        onDeleted: onDeleted);
  }
}

// Iterable<Chip> get trendChips {
//     return _trends.map((TrendChip trendChip) => Chip(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//         color: WidgetStatePropertyAll<Color>(
//             const Color.fromARGB(255, 66, 66, 66)),
//         label: Text(trendChip.trendName,
//             style: FooderLichTheme.darkTextTheme.bodyMedium!
//                 .copyWith(fontSize: 12)),
//         deleteIconColor: Colors.white,
//         onDeleted: () => setState(
//               () {
//                 _trends.removeWhere((TrendChip currentTrendChip) =>
//                     trendChip.id == currentTrendChip.id);
//               },
//             )));
//   }
