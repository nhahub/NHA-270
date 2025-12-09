import 'package:depi_project/Repositories/floorplan_repository.dart';
import 'package:depi_project/Screens/aiResult.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Bloc/floorplan/floorplan_bloc.dart';
import '../Bloc/floorplan/floorplan_event.dart';
import '../Colors/gradient_button.dart';
import '../Colors/gradient_text.dart';
import '../Components/examples.dart';
import '../Components/prompt_text_field.dart';
import '../Components/keywords.dart';

class Customize extends StatefulWidget {
  Customize({super.key});

  @override
  State<Customize> createState() => _CustomizeState();
}

class _CustomizeState extends State<Customize> {
  final TextEditingController promptController = TextEditingController();

  @override
  void dispose() {
    promptController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // العنوان الرئيسي
            GradientText(
              text: "Describe Your Ideal",
              style: textTheme.titleLarge!.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF6A2FEA), // Primary Purple
                  Color(0xFFFF8AE2), // AI Pink
                ],
              ),
            ),

            GradientText(
              text: "Space",
              style: textTheme.titleLarge!.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              gradient: const LinearGradient(
                colors: [Color(0xFF6A2FEA), Color(0xFFFF8AE2)],
              ),
            ),

            const SizedBox(height: 10),

            // النص التوضيحي
            Text(
              "Let our AI bring it to life. Start by describing the rooms, style, and key features",
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.onBackground.withOpacity(0.8),
              ),
            ),
            const SizedBox(height: 24),
      SizedBox(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Prompt(controller: promptController),
            ),
            const SizedBox(height: 24),
            Center(
              child: GenerateButton(
                text: "Generate Floorplan",
                onPressed: () {
                  final text = promptController.text.trim();
                  if (text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Please enter a prompt first"),
                      ),
                    );
                    return; // مهم جدًا عشان ماينقلش على الشاشة اللي بعدها
                  }

                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 500),
                      pageBuilder:
                          (context, animation, secondaryAnimation) =>
                          BlocProvider(
                            create: (_) => FloorplanBloc(
                              FloorplanRepository(),
                            )..add(GenerateFloorplanRequested(text)),
                            child: AIresult(msg_prompt: text),
                          ),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        final offsetAnimation = Tween<Offset>(
                          begin: const Offset(1.0, 0.0),
                          end: Offset.zero,
                        ).animate(animation);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
            const SizedBox(height: 24),

            // Keywords title
            Text(
              "Keywords",
              style: textTheme.titleMedium?.copyWith(
                color: colorScheme.primary,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            Suggestions(controller: promptController),

            // Examples title
            Text(
              "Examples",
              style: textTheme.titleMedium?.copyWith(
                color: colorScheme.onBackground,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            Examples(controller: promptController),
          ],
        ),
      ),
    );
  }
}
