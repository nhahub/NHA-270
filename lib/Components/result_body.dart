import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:depi_project/Components/save_button.dart';
import 'package:depi_project/Components/zoom_image.dart';
import 'package:depi_project/Components/message.dart';

class Result extends StatelessWidget {
  final String msgPrompt;
  final Uint8List imageBytes;

  const Result({
    super.key,
    required this.msgPrompt,
    required this.imageBytes,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Message(msg: msgPrompt),
          ),

          const SizedBox(height: 8),

          Center(
            child: GestureDetector(
              onTap: () {
                showDialog(
                  animationStyle: const AnimationStyle(
                    curve: Curves.easeIn,
                    duration: Duration(milliseconds: 200),
                  ),
                  barrierColor: Colors.black.withOpacity(0.85),
                  barrierDismissible: true,
                  context: context,
                  builder: (_) => ZoomImage(image: MemoryImage(imageBytes)),
                );
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      colorScheme.primary.withOpacity(0.9),
                      colorScheme.secondary.withOpacity(0.9),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: colorScheme.primary.withOpacity(0.45),
                      blurRadius: 24,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Container(
                  margin: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    color: Colors.black.withOpacity(0.85),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.memory(
                      imageBytes,
                      width: 350,
                      height: 350,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 12),

          Center(
            child: Container(
              padding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(999),
                color: colorScheme.primary.withOpacity(0.1),
                border: Border.all(
                  color: colorScheme.primary.withOpacity(0.6),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.auto_awesome,
                    size: 16,
                    color: colorScheme.primary,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    "AI Generated Floorplan",
                    style: TextStyle(
                      fontSize: 12,
                      color: colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 80),

          SaveButton(imageBytes: imageBytes, prompt: msgPrompt),
        ],
      ),
    );
  }
}

