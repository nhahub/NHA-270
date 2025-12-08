import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Components/project_cards.dart';
import '../Models/saved_project.dart';
import '../Repositories/saved_projects_repository.dart';

// الـ Map دي لو مش بتستخدمها خالص تقدر تمسحها
// Map<String, String> projects = {
//   "Project1":
//   "A modern, open-cost concept house with 2 bedrooms, a home office, and a large kitchen island. Include a master bathroom with a walk-in shower.",
//   "Project2":
//   "Cozy 1-bedroom apartment with a small balcony, a combined living and dining area, and plenty of natural light.",
//   "Project3":
//   "A modern, open-cost concept house with 2 bedrooms, a home office, and a large kitchen island. Include a master bathroom with a walk-in shower.",
//   "Project4":
//   "Cozy 1-bedroom apartment with a small balcony, a combined living and dining area, and plenty of natural light.",
//   "Project5":
//   "A modern, open-cost concept house with 2 bedrooms, a home office, and a large kitchen island. Include a master bathroom with a walk-in shower.",
//   "Project6":
//   "Cozy 1-bedroom apartment with a small balcony, a combined living and dining area, and plenty of natural light.",
//   "Project7":
//   "A modern, open-cost concept house with 2 bedrooms, a home office, and a large kitchen island. Include a master bathroom with a walk-in shower.",
//   "Project8":
//   "Cozy 1-bedroom apartment with a small balcony, a combined living and dining area, and plenty of natural light.",
// };

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
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      // كان: Color(0xFFFFDDF2)
      backgroundColor: colorScheme.background,
      appBar: AppBar(
        // كان: Color(0xFFFFDDF2)
        backgroundColor: colorScheme.surface,
        elevation: 0,
        title: Text(
          "Saved Projects",
          style: textTheme.titleLarge?.copyWith(
            // كان: Color(0xFF7F167F)
            color: colorScheme.primary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: BackButton(
          // كان: Color(0xFF7F167F)
          color: colorScheme.primary,
        ),
      ),
      body: ListViewProjects(
        context,
        projectsFuture,
        removeProject,
      ),
    );
  }
}

/// ✅ خلتها تاخد BuildContext عشان نستخدم الـ ColorScheme و TextTheme
Widget ListViewProjects(
    BuildContext context,
    Future<List<SavedProject>> projectsFuture,
    Future<void> Function(int id) removeProject,
    ) {
  final colorScheme = Theme.of(context).colorScheme;
  final textTheme = Theme.of(context).textTheme;

  return FutureBuilder<List<SavedProject>>(
    future: projectsFuture,
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(colorScheme.primary),
          ),
        );
      }

      final data = snapshot.data ?? [];

      if (data.isEmpty) {
        return Center(
          child: Text(
            "No saved projects yet",
            style: textTheme.bodyMedium?.copyWith(
              // كان: Color(0xFF7F167F)
              color: colorScheme.onBackground.withOpacity(0.7),
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
            time: data[index].createdAt ?? "Unknown time",
            onDismiss: () {
              final id = data[index].id;
              if (id != null) {
                removeProject(id);
              } else {
                debugPrint("ERROR: project id is null");
              }
            },
          );
        },
      );
    },
  );
}
