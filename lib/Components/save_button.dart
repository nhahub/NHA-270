import 'dart:convert';
import 'dart:typed_data';

import 'package:depi_project/Components/pop_up_save.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Models/saved_project.dart';
import '../Repositories/saved_projects_repository.dart';

class SaveButton extends StatelessWidget {
  final Uint8List imageBytes;
  final String prompt;

  const SaveButton({
    super.key,
    required this.imageBytes,
    required this.prompt,
  });

  Future<void> _saveProject(String title, BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    final email = prefs.getString('userEmail');

    if (email == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please log in to save your project')),
      );
      return;
    }

    final repo = context.read<SavedProjectRepository>();
    final imageBase64 = base64Encode(imageBytes);

    await repo.insertProject(
      SavedProject(
        userEmail: email,
        title: title,
        prompt: prompt,
        image: imageBase64,
      ),
    );

    // هنا بس بنظهر رسالة نجاح، الـ Dialog نفسه بيقفل من PopUpSave
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Project saved successfully')),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Center(
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          showDialog(
            context: context,
            builder: (dialogContext) => PopUpSave(
              // نمرر كونتكست الشاشة الأساسية عشان SnackBar و repo
              onSave: (title) => _saveProject(title, context),
            ),
          );
        },
        child: Container(
          alignment: Alignment.center,
          height: 50,
          width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                colors: [
                  Color(0xFF6A2FEA),
                  Color(0xFFFF8AE2),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF6A2FEA).withOpacity(0.4),
                  blurRadius: 16,
                  spreadRadius: 0,
                ),
              ],
            ),

          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Save",
              style: TextStyle(
                color: colorScheme.onPrimary,     // كان: Colors.white
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
