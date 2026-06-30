import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/pages/bottomNavBarPages/bottom_nav_bar_page.dart';
import 'package:flutter_ui_practice/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 33, 203, 246)),
      ),
      home: const BottomNavBarPage(),
    );
  }
}

