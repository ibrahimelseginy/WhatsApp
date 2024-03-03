import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(color: Colors.white)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(color: Colors.white)),
          prefixIcon: const Icon(Icons.tag_faces),
          prefixIconColor: Colors.white,
          hintText: 'type a messsage ',
          hintStyle: TextStyle(color: Colors.white.withOpacity(.5)),
          suffixIcon: const Icon(Icons.attach_file),
          suffixIconColor: Colors.white),
    );
  }
}
