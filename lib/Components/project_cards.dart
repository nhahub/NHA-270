import 'package:depi_project/Screens/Project.dart';
import 'package:flutter/material.dart';


class ProjectCards extends StatelessWidget {
  final String title;
  final String description;
  const ProjectCards({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      direction: DismissDirection.endToStart,
      key: ValueKey(title),
      child: projects(title, description,context),
    );
  }
}



Widget projects(String title, String description,BuildContext context) {
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
              textColor: Colors.white,
              iconColor: Colors.white,
              isThreeLine: true,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Project(title: title, description: description)));
              },
              dense: true,
              contentPadding: EdgeInsetsGeometry.only(bottom: 16),
              trailing: Icon(Icons.auto_fix_high,color: Color(0xFF7F167F),),

            ),
            Positioned(
              bottom: 0,
              right: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.access_time,size: 16,color: Color(0xFF7F167F)),
                  Text("12:00 PM",style: TextStyle(color: Color(0xFF7F167F),fontSize: 12)),
                ],

              ),
            )
          ],
        ),
      ),
    ),
  );
}
