import 'dart:typed_data';
import 'package:depi_project/Components/save_button.dart';
import 'package:flutter/material.dart';
import '../Components/message.dart';

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
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Message(msg: msgPrompt),
              ),
              Center(
                child: Image.memory(
                  imageBytes,          // ✅ مش asset ولا network
                  width: 350,
                  height: 350,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: SaveButton(),
        )
      ],
    );
  }
}
