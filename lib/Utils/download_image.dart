import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:gallery_saver_plus/gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';

Future<bool> _requestPermission() async {
  if (Platform.isAndroid) {
    final photosStatus = await Permission.photos.request();
    if (photosStatus.isGranted) return true;

    final storageStatus = await Permission.storage.request();
    if (storageStatus.isGranted) return true;

    return false;
  } else if (Platform.isIOS) {
    final status = await Permission.photosAddOnly.request();
    return status.isGranted;
  }
  return true;
}

Future<bool> downloadImageToGallery(Uint8List bytes) async {
  try {
    final allowed = await _requestPermission();
    if (!allowed) {
      debugPrint('❌ Permission denied');
      return false;
    }

    // 1) نحفظ الصورة في ملف مؤقت
    final tempDir = await getTemporaryDirectory();
    final filePath =
        '${tempDir.path}/floorplan_${DateTime.now().millisecondsSinceEpoch}.png';

    final file = File(filePath);
    await file.writeAsBytes(bytes);

    debugPrint('📁 Temp file saved at: $filePath');

    // 2) نحفظها في الجاليري
    final result = await GallerySaver.saveImage(
      file.path,
      albumName: 'Hues Designs',
    );

    debugPrint('✅ GallerySaver result: $result');

    return result ?? false;
  } catch (e, st) {
    debugPrint('❌ Error saving image: $e');
    debugPrint(st.toString());
    return false;
  }
}





