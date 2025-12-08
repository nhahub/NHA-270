import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Bloc/user/user_bloc.dart';
import '../Bloc/user/user_event.dart';
import '../Components/update_button.dart';
import '../Models/user.dart';
import '../Repositories/user_repository.dart';

class Editprofile extends StatefulWidget {
  final User user;
  const Editprofile({super.key, required this.user});

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  late TextEditingController nameController;
  String? imageBase64;
  final UserRepository repo = UserRepository();

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.user.name);
    imageBase64 = widget.user.profileImage;
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final XFile? picked = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );
    if (picked == null) return;
    final bytes = await picked.readAsBytes();
    setState(() {
      imageBase64 = base64Encode(bytes);
    });
  }

  void removeImage() {
    setState(() {
      imageBase64 = null;
    });
  }

  Future<void> saveChanges(BuildContext context) async {
    final newName = nameController.text.trim();
    if (newName.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Name cannot be empty')),
      );
      return;
    }

    context.read<UserBloc>().add(
      UpdateUserEvent(
        name: newName,
        profileImageBase64: imageBase64,
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Profile updated')),
    );

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    ImageProvider avatarImage;
    if (imageBase64 != null && imageBase64!.isNotEmpty) {
      final Uint8List bytes = base64Decode(imageBase64!);
      avatarImage = MemoryImage(bytes);
    } else {
      avatarImage = const AssetImage("assets/images/User_Profile.png");
    }

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
          "Edit Profile",
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
      body: EditProfileBody(
        context,
        avatarImage,
        pickImage,
        removeImage,
        nameController,
        saveChanges,
      ),
    );
  }
}

Widget EditProfileBody(
    BuildContext context,
    ImageProvider<Object> avatarImage,
    Future<void> Function() pickImage,
    void Function() removeImage,
    TextEditingController nameController,
    Future<void> Function(BuildContext context) saveChanges,
    ) {
  final colorScheme = Theme.of(context).colorScheme;
  final textTheme = Theme.of(context).textTheme;

  return SingleChildScrollView(
    child: Column(
      children: [
        const SizedBox(height: 24),
        Stack(
          children: [
            Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: avatarImage,
              ),
            ),
            Positioned(
              bottom: 0,
              right: MediaQuery.of(context).size.width / 2 - 100,
              child: IconButton(
                onPressed: pickImage,
                icon: Icon(
                  Icons.edit,
                  color: colorScheme.primary, // كان: Color(0xFF9700A3)
                ),
                style: ButtonStyle(
                  // كان: Colors.white
                  backgroundColor:
                  MaterialStateProperty.all(colorScheme.surface),
                  shape: MaterialStateProperty.all(
                    const CircleBorder(),
                  ),
                  elevation: MaterialStateProperty.all(2),
                ),
              ),
            ),
          ],
        ),
        TextButton(
          onPressed: removeImage,
          child: Text(
            "Remove Image",
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.error, // أو colorScheme.primary لو تحب أهدى
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 24),
        Form(
          child: SizedBox(
            width: 350,
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: "Name",
                    labelStyle: TextStyle(
                      color: colorScheme.onBackground.withOpacity(0.7),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        // كان: Color(0xFF7F167F)
                        color: colorScheme.primary,
                        width: 1.6,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        // كان: Color(0xFF7F167F)
                        color: colorScheme.outline,
                        width: 1.2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 48),
                UpdateButton(
                  onPressed: () => saveChanges(context),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
