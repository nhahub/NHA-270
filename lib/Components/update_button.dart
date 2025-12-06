import 'package:flutter/material.dart';

class UpdateButton extends StatelessWidget {
  final VoidCallback onPressed;
  const UpdateButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 350,
        decoration: const BoxDecoration(
          color: Color(0xFF7F167F),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "Update",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
