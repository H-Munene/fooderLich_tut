import 'package:uuid/uuid.dart';

class CustomChip {
  final String id;
  final String trendName;

  CustomChip({required this.trendName}) : id = const Uuid().v4();
}
