import 'package:flutter/material.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      alignment: AlignmentGeometry.center,
      color: const Color.fromARGB(255, 41, 137, 166),
      child: Text("Create",style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.w100,
        color: const Color.fromARGB(255, 255, 255, 255)
      ),),
      
    );
  }
}