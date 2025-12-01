import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final String msg;
  const Message({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFF08FF).withOpacity(0.16),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
          bottomLeft: Radius.circular(16)
        )

      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: 250,
          child: Text(msg,
            style: TextStyle(
            color: Color(0xFF7F167F)
          ),),
        ),
      ),
    );
  }
}
