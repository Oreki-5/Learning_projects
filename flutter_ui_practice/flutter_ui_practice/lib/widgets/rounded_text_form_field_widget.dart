import 'package:flutter/material.dart';

class RoundedTextFormFieldWidget extends StatelessWidget {
  final IconData prefixIconData;
  final String hintText;
  final bool obsureText;

  const RoundedTextFormFieldWidget({super.key, required this.prefixIconData, required this.hintText, this.obsureText=false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*0.85,
      decoration: const BoxDecoration(
        boxShadow: [BoxShadow(color: Color.fromARGB(40, 26, 26, 26), spreadRadius: 1, blurRadius: 15, offset: Offset(0, 5))]
      ),
      child: Center(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
          child: TextFormField(
            obscureText: obsureText,
            decoration: InputDecoration(
              prefixIcon: Icon(prefixIconData, color: Colors.blue),
              border: const OutlineInputBorder(borderSide: BorderSide.none),
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w100,
                color: const Color.fromARGB(117, 32, 38, 41)
              )
            ),
            
          ),
        ),
      ),
    );
  }
}
