import 'dart:convert';
import 'package:depi_project/Components/pop_up_save.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:typed_data';
import '../Models/saved_project.dart';
import '../Repositories/saved_projects_repository.dart';

class SaveButton extends StatelessWidget {
  final Uint8List imageBytes;
  final String prompt;
  const SaveButton({super.key, required this.imageBytes, required this.prompt});




  void onSave(String title, BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    final email = prefs.getString('userEmail');
    final repo = context.read<SavedProjectRepository>();
    final imageBase64 = base64Encode(imageBytes);
    await repo.insertProject(
      SavedProject(
        userEmail: email!,
        title: title,
        prompt: prompt,
        image: imageBase64,
      ),
    );
    Navigator.pop(context);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Project saved successfully')),
    );
  }






  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          showDialog(context: context, builder: (contex) =>PopUpSave(
            onSave: (title) async => onSave(title, context) ,
          ));
        },
        child: Container(
          alignment: Alignment.center,
          height: 50,
          width: 350,
          decoration: const BoxDecoration(
            color: Color(0xFF7F167F),
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Save",
              style: TextStyle(
                color: Colors.white,
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
