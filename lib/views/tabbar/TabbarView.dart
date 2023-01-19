import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:puntada/brand/Colors.dart';
import 'package:puntada/views/home/HomeView.dart';

class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: BrandColors.secondaryColor,
          unselectedItemColor: BrandColors.terciaryColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: BrandColors.primaryColor,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "cd"),
            BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: "cd"),
            BottomNavigationBarItem(icon: Icon(Icons.lock_clock), label: "cd"),
            BottomNavigationBarItem(
                icon: Icon(Icons.media_bluetooth_on_sharp), label: "cd")
          ]),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const Spacer(),
                Expanded(
                    child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: (Text(
                    "dsfsdf",
                    style: TextStyle(color: Colors.white),
                  )),
                )),
              ],
            ),
            const HomeView()
          ],
        ),
      ),
    );
  }
}
