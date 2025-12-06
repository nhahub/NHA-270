import 'dart:typed_data';
import 'package:depi_project/Components/save_button.dart';
import 'package:depi_project/Components/zoom_image.dart';
import 'package:flutter/material.dart';
import '../Components/message.dart';

class Result extends StatelessWidget {
  final String msgPrompt;
  final Uint8List imageBytes;

  const Result({super.key, required this.msgPrompt, required this.imageBytes});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Message(msg: msgPrompt),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                showDialog(
                  animationStyle: AnimationStyle(
                      curve: Curves.easeIn
                      ,duration: Duration(milliseconds: 200)
                  ),
                  barrierColor: Colors.black.withOpacity(0.85,), // خلفية غامقة شفافة
                  barrierDismissible: true,
                  context: context,
                  builder: (_) => ZoomImage(imageBytes: imageBytes),
                );
              },
              child: Image.memory(
                imageBytes, // ✅ مش asset ولا network
                width: 350,
                height: 350,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 100),
          SaveButton(imageBytes: imageBytes, prompt: msgPrompt),
        ],
      ),
    );
  }
}
