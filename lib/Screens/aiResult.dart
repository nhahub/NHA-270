import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import '../Colors/gradient_text.dart';
import '../Components/result_body.dart';
import '../Bloc/floorplan/floorplan_bloc.dart';
import '../Bloc/floorplan/floorplan_state.dart';
import '../Components/error_view.dart';
import '../Utils/download_image.dart';

class AIresult extends StatelessWidget {
  final String msg_prompt;
  const AIresult({super.key, required this.msg_prompt});

  void downloadImage(BuildContext context, Uint8List imageBytes) async {
    final ok = await downloadImageToGallery(imageBytes);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          ok ? 'Image saved to gallery ✅' : 'Failed to save image ❌',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Uint8List? image;
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: colorScheme.background,

      appBar: AppBar(
        backgroundColor: colorScheme.surface,
        elevation: 0,
        title:GradientText(
          text: "AI Result",
          style: textTheme.titleLarge!.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF6A2FEA),
              Color(0xFFFF8AE2),
            ],
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
              if (value == "download" && image != null) {
                downloadImage(context, image!);
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
                      color: colorScheme.primary,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "Download",
                      style: TextStyle(
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

      body: BlocConsumer<FloorplanBloc, FloorplanState>(
        listener: (context, state) {
          if (state is FloorplanFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        builder: (context, state) {
          if (state is FloorplanLoading) {
            return Center(
              child: Lottie.asset(
                "assets/lotties/Loading animation.json",
                fit: BoxFit.contain,
                repeat: true,
              ),
            );
          } else if (state is FloorplanSuccess) {
            image = state.imageBytes;
            return Result(
              msgPrompt: msg_prompt,
              imageBytes: state.imageBytes, // 👈 صورة جاية من الـ API
            );
          } else if (state is FloorplanFailure) {
            return ErrorView(
              msgPrompt: msg_prompt,
              errorMessage: state.message,
            );
          }
          // FloorplanInitial أو أي حالة تانية
          return Center(
            child: Text(
              "Preparing to generate floorplan...",
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.onBackground,
              ),
            ),
          );
        },
      ),
    );
  }
}







