import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/pages/bottomNavBarPages/bottom_nav_bar_page.dart';
import 'package:flutter_ui_practice/pages/login_page.dart';
import 'package:flutter_ui_practice/pages/youtube_ui_practice/yt_home_page.dart';
import 'package:google_fonts/google_fonts.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(),
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 255, 255, 255)),
        scaffoldBackgroundColor: Colors.black38,
      ),
      home: const YtHomePage(),
    );
  }
}

