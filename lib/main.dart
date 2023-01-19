import 'package:flutter/material.dart';
import 'package:puntada/brand/Theme.dart';
import 'package:puntada/views/tabbar/TabbarView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Puntada',
      theme: BrandTheme.appTheme,
      home: const TabView(),
    );
  }
}
