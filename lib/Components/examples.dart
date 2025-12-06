import 'package:flutter/material.dart';

List<String> examples = [
  "A modern, open-cost concept house with 2 bedrooms, a home office, and a large kitchen island. Include a master bathroom with a walk-in shower.",
  "Cozy 1-bedroom apartment with a small balcony, a combined living and dining area, and plenty of natural light.",
  "Cozy 1-bedroom apartment with a small balcony, a combined living and dining area, and plenty of natural light.",
];

class Examples extends StatelessWidget {
  TextEditingController controller = TextEditingController();
   Examples({super.key, required this.controller});



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: examples.length,
      itemBuilder: (context, index) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFF7BAEFF).withOpacity(0.56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onPressed: () {
                  controller.text = "${controller.text} ${examples[index]}";

              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  examples[index],
                  style: TextStyle(color: Color(0xFF0E2954), fontSize: 12),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
