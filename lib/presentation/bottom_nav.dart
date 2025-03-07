import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooder_lich/core/theme.dart';
import 'package:fooder_lich/presentation/screens/home.dart';
import 'package:fooder_lich/presentation/screens/profile.dart';
import 'package:fooder_lich/presentation/screens/recipes.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _index = 0;

  var bottomNavBarItems = [
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.compass), label: 'Explore'),
    BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Recipes'),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.list_dash), label: 'To Buy')
  ];

  List<Widget> pages = [
// ExplorePage(),
    HomePage(),
    RecipePage(),
    ProfilePage()
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
        body: SafeArea(child: Center(child: pages[_index])));
  }
}
