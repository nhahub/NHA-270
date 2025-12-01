import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Components/pop_up_logout.dart';
import '../Repositories/user_repository.dart';

class Profile extends StatelessWidget {
   Profile({super.key});

  final repo = UserRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFDDF2),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFDDF2),
        title: Text(
          "Profile",
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
            onPressed: () =>showDialog(context: context, builder: (contex) =>PopUpLogout()),
            icon: Icon(Icons.logout, color: Color(0xFF7F167F))
            )
        ]
      ),
      body: Profile_Body(context),
    );
  }
}



Widget Profile_Body(BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("assets/images/User_Profile.png"),
              ),
            ),
            Positioned(
              bottom: 0,
              right: MediaQuery.of(context).size.width/4,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.edit, color: Color(0xFF9700A3)),
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 16),
      Text(
        "User Name",
        style: TextStyle(
          color: Color(0xFF9700A3),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        "UserEmail@gmail.com",
        style: TextStyle(
          color: Color(0xFF9700A3),
          fontSize: 14,
          // fontWeight: FontWeight.bold
        ),
      ),
    ],
  );
}

