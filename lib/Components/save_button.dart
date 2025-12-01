import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {},
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
