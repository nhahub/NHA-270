import 'package:flutter/material.dart';
import '../Components/project_cards.dart';

Map<String, String> projects = {
  "Project1":
  "A modern, open-cost concept house with 2 bedrooms, a home office, and a large kitchen island. Include a master bathroom with a walk-in shower.",
  "Project2":
  "Cozy 1-bedroom apartment with a small balcony, a combined living and dining area, and plenty of natural light.",
  "Project3":
  "A modern, open-cost concept house with 2 bedrooms, a home office, and a large kitchen island. Include a master bathroom with a walk-in shower.",
  "Project4":
  "Cozy 1-bedroom apartment with a small balcony, a combined living and dining area, and plenty of natural light.",
  "Project5":
  "A modern, open-cost concept house with 2 bedrooms, a home office, and a large kitchen island. Include a master bathroom with a walk-in shower.",
  "Project6":
  "Cozy 1-bedroom apartment with a small balcony, a combined living and dining area, and plenty of natural light.",
  "Project7":
  "A modern, open-cost concept house with 2 bedrooms, a home office, and a large kitchen island. Include a master bathroom with a walk-in shower.",
  "Project8":
  "Cozy 1-bedroom apartment with a small balcony, a combined living and dining area, and plenty of natural light.",
};

class Savedprojects extends StatelessWidget {
  Savedprojects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFDDF2),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFDDF2),
        title: Text("Saved Projects",
            style: TextStyle(
                color: Color(0xFF7F167F),
                fontWeight: FontWeight.bold,
                fontSize: 20

            )),
        centerTitle: true,
        leading: BackButton(color: Color(0xFF7F167F)),
      ),
      body: ListViewProjects(),
    );
  }
}



Widget ListViewProjects() {
  return ListView.builder(
    itemCount: projects.length,
    itemBuilder: (context, index) {
      return ProjectCards(
        title: projects.keys.elementAt(index),
        description: projects.values.elementAt(index),
      );
    },
  );
}
