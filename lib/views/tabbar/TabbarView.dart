import 'package:flutter/material.dart';
import 'package:puntada/brand/Colors.dart';
import 'package:puntada/views/home/HomeView.dart';
import 'package:puntada/views/profile/profileView.dart';

class TabView extends StatefulWidget {
  static String routeName = "/tabView";
  const TabView({super.key});

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const HomeView(),
    const ProfileView(),
    const Text("En construcción"),
    const Text("En construcción")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: BrandColors.secondaryColor,
            unselectedItemColor: BrandColors.terciaryColor,
            currentIndex: _currentIndex,
            onTap: onTabTapped,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: BrandColors.primaryColor,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.schedule), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.location_on), label: "")
            ]),
        body: IndexedStack(
          index: _currentIndex,
          children: _children,
        ));
  }

  void onTabTapped(int index) {
    print("index: $index");
    if (index == 2 || index == 3) {
      return;
    }
    setState(() {
      _currentIndex = index;
    });
  }
}
