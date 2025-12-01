import 'package:flutter/material.dart';
List<String> suggestions = [
  "Modern",
  "Old",
  "Large",
  "Small",
  "Medium",
  "Kitchen",
  "Vintage",
  "Pool"
];
class Suggestions extends StatelessWidget {
  const Suggestions({super.key});

  @override
  Widget build(BuildContext context) {

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: suggestions.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        mainAxisExtent: 50,
      ),
      itemBuilder: (context, index) {
        return Center(child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Color(0xFFFF08FF).withOpacity(0.16)
            ),
            onPressed: (){},
            child: Text(suggestions[index],style: TextStyle(
                color: Color(0xFF7F167F),
                fontSize: 12
            ),)
        ));
      },
    );
  }
}
