import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double opacity;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.opacity = 1, // 1 = عادي ، 0.3 = مستخدم في Splash
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return SizedBox(
      width: 350,
      height: 48, // أكثر راحة من 40
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          // كان: Color(0xFFCB1C8D)
          backgroundColor: colorScheme.primary.withOpacity(opacity),
          foregroundColor: colorScheme.onPrimary, // لون النص
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 2,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
