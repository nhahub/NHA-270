import 'package:flutter/material.dart';
import 'dart:typed_data';



class PopUpSave extends StatefulWidget {
  final Future<void> Function(String title) onSave;
  const PopUpSave({super.key, required this.onSave,});

  @override
  State<PopUpSave> createState() => _PopUpSaveState();
}

class _PopUpSaveState extends State<PopUpSave> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController title = TextEditingController();

  @override
  void dispose() {
    title.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    await widget.onSave(title.text);
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF7F167F)),
                ),
                child: Text("Save",
                    style: TextStyle(
                        color: Colors.white
                    )
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Cancel",
                  style: TextStyle(color: Color(0xFF7F167F)),
                ),
              ),
            ),
          ],
        ),
      ],
      title: Text(
        "Save your project",
        style: TextStyle(color: Color(0xFF7F167F), fontSize: 18),
      ),
      content: Form(
        key: formKey,
        child: TextFormField(
          controller: title,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please enter a name";
            }
            return null;
          },
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color(0xFF7F167F)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color(0xFF7F167F)),
            ),
            hintText: "Enter a name ",
            hintStyle: TextStyle(
              fontSize: 14,
              color: Color(0xFF7F167F).withOpacity(0.5),
            ),
          ),
        ),
      ),
    );
  }
}
