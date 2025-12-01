import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Components/project_cards.dart';
import '../Models/saved_project.dart';
import '../Repositories/saved_projects_repository.dart';

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

class Savedprojects extends StatefulWidget {
  Savedprojects({super.key});

  @override
  State<Savedprojects> createState() => _SavedprojectsState();
}

class _SavedprojectsState extends State<Savedprojects> {
  late Future<List<SavedProject>> projectsFuture;

  @override
  void initState() {
    super.initState();
    projectsFuture = load();
  }

  Future<List<SavedProject>> load() async {
    final prefs = await SharedPreferences.getInstance();
    final email = prefs.getString('userEmail');
    if (email == null) return [];
    final repo = context.read<SavedProjectRepository>();
    return await repo.getProjectsForUser(email);
  }
  
  Future<void> removeProject(int id) async {
    final repo = context.read<SavedProjectRepository>();
    await repo.deleteProject(id);
    setState(() {
      projectsFuture = load();
    });
  }

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
      body: ListViewProjects(projectsFuture,removeProject),
    );
  }
}



Widget ListViewProjects(Future<List<SavedProject>> projectsFuture, Future<void> Function(int id) removeProject) {
  return FutureBuilder<List<SavedProject>>(
      future: projectsFuture,
      builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Center(child: CircularProgressIndicator());
    }
    final data = snapshot.data ?? [];
    if (data.isEmpty) {
      return const Center(
        child: Text(
          "No saved projects yet",
          style: TextStyle(
            color: Color(0xFF7F167F),
            fontSize: 16,
          ),
        ),
      );
    }

    return ListView.builder(
    itemCount: data.length,
    itemBuilder: (context, index) {
      return ProjectCards(
        imageBase64: data[index].image,
        title: data[index].title,
        description: data[index].prompt,
        time: data[index].createdAt?? "Unknown time",
        onDismiss: () {
          final id = data[index].id;
          if (id != null) {
            removeProject(id);
          } else {
            print("ERROR: project id is null");
          }
        },
      );
    },
  );
}
  );
}


