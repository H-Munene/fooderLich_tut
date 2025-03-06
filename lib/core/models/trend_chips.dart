import 'package:uuid/uuid.dart';

class TrendChip {
  final String id;
  final String trendName;

  TrendChip({required this.trendName}) : id = const Uuid().v4();
}
