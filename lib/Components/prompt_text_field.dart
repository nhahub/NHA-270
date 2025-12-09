import 'package:flutter/material.dart';

class Prompt extends StatelessWidget {
  final TextEditingController controller;
  const Prompt({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return TextField(
      controller: controller,
      maxLines: 8,
      style: TextStyle(
        color: colorScheme.onSurface,
      ),
      decoration: InputDecoration(
        filled: true,

        fillColor: colorScheme.surface.withOpacity(0.4),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            // كان: Color(0xFF7F167F)
            color: Color(0xFF6A2FEA),
            width: 2,
          ),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: colorScheme.primary.withOpacity(0.4),
            width: 1.0,
          ),
        ),

        hintText: "Design your 2D floor plan",
        hintStyle: TextStyle(
          color: colorScheme.primary.withOpacity(0.30),
        ),
      ),
    );
  }
}
