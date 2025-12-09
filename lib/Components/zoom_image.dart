import 'package:flutter/material.dart';

class ZoomImage extends StatelessWidget {
  final ImageProvider image;

  const ZoomImage({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        // Tap على الخلفية فقط → يقفل
        onTap: () => Navigator.pop(context),
        behavior: HitTestBehavior.opaque,
        child: Center(
          // GestureDetector داخلي يمنع إغلاق عند الضغط على الصورة نفسها
          child: GestureDetector(
            onTap: () {}, // عشان ما يتبعتش للأب
            child: InteractiveViewer(
              panEnabled: true,
              minScale: 1,
              maxScale: 10,
              child: Image(
                image: image,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
