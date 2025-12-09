import 'package:flutter/material.dart';

List<String> keywords = [
  "Bedroom",
  "Lawn",
  "Pool",
  "Garden",
  "Living",
  "Toilets",
  "Roof",
  "Balcony"
];

class Suggestions extends StatelessWidget {
  final TextEditingController controller;

  const Suggestions({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme   = Theme.of(context).textTheme;

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: keywords.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        mainAxisExtent: 48,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
      ),
      itemBuilder: (context, index) {
        return Center(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: colorScheme.primary.withOpacity(0.12),
              padding: const EdgeInsets.symmetric(horizontal: 6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              controller.text = "${controller.text} ${keywords[index]}";
            },
            child: Text(
              keywords[index],
              style: textTheme.bodySmall?.copyWith(
                color: colorScheme.primary,
                fontSize: 10.5,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        );
      },
    );
  }
}
