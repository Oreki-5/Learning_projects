import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/pages/bottomNavBarPages/create_page.dart';
import 'package:flutter_ui_practice/pages/bottomNavBarPages/history_page.dart';
import 'package:flutter_ui_practice/pages/bottomNavBarPages/home_page.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {

  int _currentPage = 0;

  List<Widget> pages =[
    HomePage(),
    CreatePage(),
    HistoryPage()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        onTap: (value){
          setState(() {
            _currentPage=value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline) ,label: "Create"),
          BottomNavigationBarItem(icon: Icon(Icons.history_rounded) ,label: "Hisory"),
        ],
      ),
    );
  }
}
