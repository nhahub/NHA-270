import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../Components/message.dart';

class Project extends StatelessWidget {
  final String title;
  final String description;
  final String imageBase64;
  const Project({super.key, required this.title, required this.description, required this.imageBase64,});

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
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_vert,color: Color(0xFF7F167F))
          )
        ],

      ),
      body: ProjectDetails(description,imageBytes!),
    );
  }
}


Widget ProjectDetails(String description,Uint8List? imageBase64){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Message(msg: description
              )),
      Center(
          child: Image.memory(imageBase64!,width: 350,height: 350),)
      ,
    ],
  );
}