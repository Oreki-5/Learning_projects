import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      alignment: AlignmentGeometry.center,
      color: const Color.fromARGB(255, 134, 44, 176),
      child: Text("Home",style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.w100,
        color: const Color.fromARGB(255, 255, 255, 255)
      ),),
      
    );
  }
}