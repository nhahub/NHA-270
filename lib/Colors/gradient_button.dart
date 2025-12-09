import 'package:flutter/material.dart';

class GenerateButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;

  const GenerateButton({
    super.key,
    required this.onPressed,
    this.text = "Generate",
  });

  @override
  State<GenerateButton> createState() => _GenerateButtonState();
}

class _GenerateButtonState extends State<GenerateButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 120),
      lowerBound: 0.95,
      upperBound: 1.0,
    );
    _scale = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void animateTap() {
    _controller.reverse().then((_) {
      _controller.forward();
      widget.onPressed();
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return ScaleTransition(
      scale: _scale,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: animateTap,
        child: Container(
          width: 350,
          height: 48,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),

            // ⭐ AI Gradient
            gradient: LinearGradient(
              colors: [
                colorScheme.primary,
                colorScheme.secondary,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),

            // ⭐ Glow Effect
            boxShadow: [
              BoxShadow(
                color: colorScheme.primary.withOpacity(0.45),
                blurRadius: 18,
                offset: const Offset(0, 6),
              ),
            ],
          ),

          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.auto_awesome, color: colorScheme.onPrimary, size: 22),
              const SizedBox(width: 10),
              Text(
                widget.text,
                style: TextStyle(
                  fontSize: 15,
                  color: colorScheme.onPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
