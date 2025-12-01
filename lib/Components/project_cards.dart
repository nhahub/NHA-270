import 'package:intl/intl.dart';
import 'package:depi_project/Screens/Project.dart';
import 'package:flutter/material.dart';


class ProjectCards extends StatelessWidget {
  final String title;
  final String description;
  final String imageBase64;
  final String time;
  final VoidCallback? onDismiss;
  const ProjectCards({
    super.key,
    required this.title,
    required this.description, required this.time, this.onDismiss, required this.imageBase64,
  });




  String formatTime(String createdAt) {
    final date = DateTime.parse("${createdAt}Z");
    return DateFormat('hh:mm a').format(date); // مثال: 07:15 AM
  }

  String formatDate(String createdAt) {
    final date = DateTime.parse(createdAt);
    return DateFormat('dd/MM/yyyy').format(date); // مثال: 05/12/2025
  }




  @override
  Widget build(BuildContext context) {
    return Dismissible(
      direction: DismissDirection.endToStart,
      key: ValueKey(title),
      onDismissed: (direction) {
        if (onDismiss != null) {
          onDismiss!();
        }
      },
      child: projects(title, description,context,time,imageBase64,formatTime,formatDate),
    );
  }
}



Widget projects(String title, String description,BuildContext context,String time,String imageBase64, String Function(String createdAt) formatTime, String Function(String createdAt) formatDate) {
  return Card(
    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color(0xFFFF08FF).withOpacity(0.3),
              Color(0xFF7BAEFF).withOpacity(0.56)
            ]
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            ListTile(
              title: Text(title,style: TextStyle(color: Color(0xFF7F167F),fontWeight: FontWeight.bold)),
              subtitle: Text(description),
              leading: Icon(Icons.auto_fix_high,color: Color(0xFF7F167F),),
              textColor: Colors.white,
              iconColor: Colors.white,
              isThreeLine: true,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Project(title: title, description: description,imageBase64:imageBase64,)));
              },
              dense: true,
              contentPadding: EdgeInsetsGeometry.only(bottom: 16),
              trailing: Text(formatDate(time),style: TextStyle(color: Color(0xFF7F167F),fontSize: 12)),
              // trailing: Icon(Icons.auto_fix_high,color: Color(0xFF7F167F),),

            ),
            Positioned(
              bottom: 0,
              right: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.access_time,size: 16,color: Color(0xFF7F167F)),
                  SizedBox(width: 4),
                  Text(formatTime(time),style: TextStyle(color: Color(0xFF7F167F),fontSize: 12)),
                ],

              ),
            )
          ],
        ),
      ),
    ),
  );
}
