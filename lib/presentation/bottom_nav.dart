import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooder_lich/core/theme.dart';
import 'package:fooder_lich/presentation/home.dart';
import 'package:fooder_lich/presentation/profile.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _index = 0;

  var bottomNavBarItems = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.gift), label: 'Card'),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: 'Profile')
  ];

  var pages = [
    HomePage(),
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Cards'),
        ],
      ),
    ),
    ProfilePage(),
  ];

  void _currentBottomNavPage(int currentIndex) {
    setState(() {
      _index = currentIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "FooderLich",
            style: FooderLichTheme.lightTextTheme.titleLarge,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            elevation: 0,
            currentIndex: _index,
            onTap: _currentBottomNavPage,
            items: bottomNavBarItems
                .map((bottomNavBarItem) => bottomNavBarItem)
                .toList()),
        body: pages[_index]);
  }
}
