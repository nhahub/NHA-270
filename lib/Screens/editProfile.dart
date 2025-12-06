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
    return Scaffold(
      backgroundColor: Color(0xFFFFDDF2),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFDDF2),
        title: Text(
          "Edit Profile",
          style: TextStyle(
            color: Color(0xFF7F167F),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: BackButton(color: Color(0xFF7F167F)),
      ),
      body: EditProfileBody(context,avatarImage,pickImage,removeImage,nameController,saveChanges),
    );
  }
}

Widget EditProfileBody(context, ImageProvider<Object> avatarImage, Future<void> Function() pickImage, void Function() removeImage, TextEditingController nameController, Future<void> Function(BuildContext context) saveChanges) {
  return SingleChildScrollView(
    child: Column(
      children: [
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
              right: MediaQuery.of(context).size.width / 2 -100,
              child: IconButton(
                onPressed: pickImage,
                icon: Icon(Icons.edit, color: Color(0xFF9700A3)),
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.white),
                ),
              ),
            ),
          ],
        ),
        TextButton(onPressed: removeImage, child: Text("Remove Image")),
        SizedBox(height: 24),
        Form(
            child: SizedBox(
              width: 350,
              child: Column(
                children: [
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: "Name",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xFF7F167F)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xFF7F167F)),
                      ),
                    )

                  ),
                  SizedBox(height: 48),
                  UpdateButton(
                    onPressed: () => saveChanges(context),
                  ),

                ]
              ),
            )
        )
      ],
    ),
  );
}
