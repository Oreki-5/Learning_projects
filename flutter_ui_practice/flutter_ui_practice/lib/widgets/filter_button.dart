import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final String _buttonText;
  const FilterButton({super.key, required this._buttonText});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // backgroundColor: Colors.blue,
                foregroundColor: const Color.fromARGB(255, 2, 0, 0),
                backgroundColor: const Color.fromARGB(255, 244, 244, 244),
                shadowColor: Colors.black,
                textStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(_buttonText),
            );
  }
}
