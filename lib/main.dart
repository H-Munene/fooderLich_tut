import 'package:flutter/material.dart';
import 'package:fooder_lich/core/theme.dart';
import 'package:fooder_lich/presentation/bottom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: FooderLichTheme.light(),
      home: const BottomNav(),
    );
  }
}
