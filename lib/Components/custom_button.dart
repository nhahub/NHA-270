import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double opacity;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.opacity=1,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 40,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFCB1C8D).withOpacity(opacity),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),

          ),),

          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ))
    );
  }
}
