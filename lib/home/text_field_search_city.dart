
import 'package:flutter/material.dart';

class TextFieldSearchCity extends StatelessWidget {
  const TextFieldSearchCity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'City',
        label: const Text(
          'Enter the city ',
          style: TextStyle(
            fontSize: 22,
            color: Color.fromARGB(255, 184, 181, 181),
          ),
        ),
        prefixIcon: const Icon(Icons.search),
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 184, 181, 181),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 5, color: Colors.grey),
          borderRadius: BorderRadius.circular(50.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 5, color: Colors.grey),
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    );
  }
}