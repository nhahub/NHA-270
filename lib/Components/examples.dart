import 'package:flutter/material.dart';

List<String> examples = [
  "A modern, open-cost concept house with 2 bedrooms, a home office, and a large kitchen island. Include a master bathroom with a walk-in shower.",
  "Cozy 1-bedroom apartment with a small balcony, a combined living and dining area, and plenty of natural light.",
  "An industrial-style loft conversion with exposed brickwork, steel beams, and polished concrete floors. Features floor-to-ceiling windows, an open staircase, and a dedicated artist's studio nook.",
  "Spacious family home designed around a central, shaded courtyard. Includes 4 large bedrooms, high ceilings, a separate laundry room, and a dedicated playroom for children.",
  "A minimalist 3-story townhouse featuring a rooftop terrace with panoramic city views, an integrated smart home system, and an elevator. Includes an attached two-car garage."
];

class Examples extends StatelessWidget {
  final TextEditingController controller;

  Examples({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme   = Theme.of(context).textTheme;

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: examples.length,
      itemBuilder: (context, index) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(

              onTap: () {
                controller.text = "${controller.text} ${examples[index]}";
              },
              child: Container(
                height: 112,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: LinearGradient(
                    colors: [
                      // كان: Color(0xFFFF08FF).withOpacity(0.05)...
                      colorScheme.secondary.withOpacity(0.08),
                      colorScheme.tertiary.withOpacity(0.34),
                    ],
                  ),
                  border: Border.all(
                    color: colorScheme.primary.withOpacity(0.18),
                    width: 1,
                  ),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    examples[index],
                    style: textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onTertiaryContainer,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
