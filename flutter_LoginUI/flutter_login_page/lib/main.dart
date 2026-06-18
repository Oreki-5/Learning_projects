import 'package:flutter/material.dart';
import 'package:flutter_login_page/pages/home_page.dart';
import 'package:flutter_login_page/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sample App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 161, 12, 225)),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
      initialRoute: "/login",
      routes: {
        "/login": (context)=> LoginPage(),
        "/home" : (context)=> HomePage(),
      },
    );
  }
}
