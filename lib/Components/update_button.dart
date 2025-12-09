import 'package:flutter/material.dart';

class UpdateButton extends StatelessWidget {
  final VoidCallback onPressed;
  const UpdateButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              colors: [
                Color(0xFF6A2FEA),
                Color(0xFFFF8AE2),
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF6A2FEA).withOpacity(0.4),
                blurRadius: 16,
                spreadRadius: 0,
              ),
            ],
          ),

        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Update",
            style: TextStyle(
              color: colorScheme.onPrimary,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
