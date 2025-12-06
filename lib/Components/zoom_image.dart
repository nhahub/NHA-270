import 'dart:typed_data';

import 'package:flutter/material.dart';

class ZoomImage extends StatelessWidget {
  final Uint8List imageBytes;

  const ZoomImage({super.key, required this.imageBytes});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context), // اضغطي للخروج
      child: Center(
        child: InteractiveViewer(
          panEnabled: true,        // سحب الصورة
          minScale: 1,             // أقل zoom
          maxScale: 10,             // أقصى zoom
          child: Image.memory(
            imageBytes,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
