import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import '../Components/message.dart';
import '../Components/zoom_image.dart';
import '../Utils/download_image.dart';

class Project extends StatelessWidget {
  final String title;
  final String description;
  final String imageBase64;
  const Project({super.key, required this.title, required this.description, required this.imageBase64,});

  void downloadImage(BuildContext context, Uint8List imageBytes) async {
    final ok = await downloadImageToGallery(imageBytes);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          ok ? 'Image saved to gallery ✅' : 'Failed to save image ❌',
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    Uint8List? imageBytes;
    imageBytes = base64Decode(imageBase64);

    return Scaffold(
      backgroundColor: Color(0xFFFFDDF2),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFDDF2),
        title: Text(
          title,
          style: TextStyle(
            color: Color(0xFF7F167F),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: BackButton(color: Color(0xFF7F167F)),
        actions: [
PopupMenuButton(
      icon: Icon(Icons.more_vert,color: Color(0xFF7F167F)),
      onSelected: (value){
        if(value=="download") {
          downloadImage(context,imageBytes!);
        }
        },
      itemBuilder: (context) =>[
        PopupMenuItem(
        value: "download",
        child: Row(
          children: [
            Icon(Icons.file_download,size: 18, color: Color(0xFF7F167F)),
            SizedBox(width: 8,),
            Text("Download",style: TextStyle(color: Color(0xFF7F167F))),
          ],
        ),
      )
      ],
)],

      ),
      body: ProjectDetails(description,imageBytes!,context),
    );
  }
}


Widget ProjectDetails(String description,Uint8List? imageBase64, BuildContext context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Message(msg: description
              )),
      Center(
          child: GestureDetector(
              onTap: () {
                showDialog(
                  animationStyle: AnimationStyle(
                   curve: Curves.easeIn
                      ,duration: Duration(milliseconds: 200)
                  ),
                  useRootNavigator: true,
                  barrierColor: Colors.black.withOpacity(0.85,), // خلفية غامقة شفافة
                  barrierDismissible: true,
                  context: context,
                  builder: (_) => ZoomImage(imageBytes: imageBase64),
                );
              },
              child: Image.memory(imageBase64!,width: 350,height: 350)),)
      ,
    ],
  );
}