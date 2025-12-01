import 'package:flutter/material.dart';
class Prompt extends StatelessWidget {
  final TextEditingController controller;
    Prompt({super.key, required this.controller});


  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        maxLines: 8,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white.withOpacity(0.3),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xFF7F167F).withOpacity(0.50)),
          ),
          enabledBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xFF7F167F).withOpacity(0.50)),
          ),
          hintText: "Design your 2d floor plan",
          hintStyle: TextStyle(color: Color(0xFF7F167F).withOpacity(0.20)),
        )

    );
  }
}
