import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      alignment: AlignmentGeometry.center,
      color: const Color.fromARGB(255, 158, 42, 42),
      child: Text("History",style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.w100,
        color: const Color.fromARGB(255, 255, 255, 255)
      ),),
      
    );
  }
}