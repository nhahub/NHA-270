import 'package:depi_project/Components/prompt_text_field.dart';
import 'package:flutter/material.dart';
List<String> keywords = [
  "Bedroom",
  "Lawn",
  "Pool",
  "Garden",
  "Living",
  "Toilets",
  "Roof",
  "balcony"
];
class Suggestions extends StatelessWidget {
  final TextEditingController controller;
   const Suggestions({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: keywords.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        mainAxisExtent: 50,
      ),
      itemBuilder: (context, index) {
        return Center(child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Color(0xFFFF08FF).withOpacity(0.16)
            ),
            onPressed: (){
                controller.text = "${controller.text} ${keywords[index]}";
            },
            child: Text(keywords[index],style: TextStyle(
                color: Color(0xFF7F167F),
                fontSize: 11
            ),)
        ));
      },
    );
  }
}
