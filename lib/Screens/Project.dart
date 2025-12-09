import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import '../Components/message.dart';
import '../Components/zoom_image.dart';
import '../Utils/download_image.dart';

class Project extends StatelessWidget {
  final String title;
  final String description;
  final String imageBase64;

  const Project({
    super.key,
    required this.title,
    required this.description,
    required this.imageBase64,
  });

  void downloadImage(BuildContext context, Uint8List imageBytes) async {
    final ok = await downloadImageToGallery(imageBytes);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          ok ? 'Image saved to gallery ' : 'Failed to save image ',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Uint8List imageBytes = base64Decode(imageBase64);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: colorScheme.background,
      appBar: AppBar(
        backgroundColor: colorScheme.surface,
        elevation: 0,
        title: Text(
          title,
          style: textTheme.titleLarge?.copyWith(
            color: colorScheme.primary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: BackButton(
          color: colorScheme.primary,
        ),
        actions: [
          PopupMenuButton(
            icon: Icon(
              Icons.more_vert,
              color: colorScheme.primary,
            ),
            onSelected: (value) {
              if (value == "download") {
                downloadImage(context, imageBytes);
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: "download",
                child: Row(
                  children: [
                    Icon(
                      Icons.file_download,
                      size: 18,
                      // كان: Color(0xFF7F167F)
                      color: colorScheme.primary,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "Download",
                      style: TextStyle(
                        // كان: Color(0xFF7F167F)
                        color: colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: ProjectDetails(
        description,
        imageBytes,
        context,
      ),
    );
  }
}

Widget ProjectDetails(
    String description,
    Uint8List imageBytes,
    BuildContext context,
    ) {
  final colorScheme = Theme.of(context).colorScheme;
  final textTheme = Theme.of(context).textTheme;

  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Message(msg: description),
      ),
      Center(
        child: GestureDetector(
          onTap: () {
            showDialog(
              animationStyle: const AnimationStyle(
                curve: Curves.easeIn,
                duration: Duration(milliseconds: 200),
              ),
              useRootNavigator: true,
              barrierColor: Colors.black.withOpacity(0.85),
              barrierDismissible: true,
              context: context,
              builder: (_) => ZoomImage(
                image: MemoryImage(imageBytes),
              ),
            );
          },
          child: Image.memory(
            imageBytes,
            width: 350,
            height: 350,
          ),
        ),
      ),
    ],
  );
}
