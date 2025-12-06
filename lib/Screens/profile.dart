import 'dart:convert';
import 'dart:typed_data';

import 'package:depi_project/Bloc/user/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Bloc/user/user_state.dart';
import '../Components/pop_up_logout.dart';
import '../Models/user.dart';
import '../Repositories/user_repository.dart';
import 'editProfile.dart';

class Profile extends StatefulWidget {
   Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final repo = UserRepository();
  late Future<User?> userFuture;

  @override
  void initState() {
    super.initState();
    userFuture = loadUser();
  }

  Future<User?> loadUser() async {
    final prefs = await SharedPreferences.getInstance();
    final email = prefs.getString('userEmail');
    if (email == null) return null;
    return await repo.getUserByEmail(email);

  }

  // Future<User?> loadUser() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final email = prefs.getString('userEmail');
  //   if (email == null) return null;
  //   // لازم يكون عندك الفانكشن دي في الريبو:
  //   // Future<User?> getUserByEmail(String email)
  //   return await repo.getUserByEmail(email);
  // }

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
      body: Profile_Body(context,userFuture,loadUser),
    );
  }
}



Widget Profile_Body(BuildContext context, Future<User?> userFuture, Future<void> Function() loadUser,) {
  return BlocBuilder<UserBloc, UserState>(
      builder: (context,state){
        if(state is UserLoading || state is UserInitial){
          return Center(child: CircularProgressIndicator());
        }

        if(state is UserError){
          return Center(child: Text(state.message,style: TextStyle(color: Color(0xFF7F167F)),));

        }

        if(state is UserLoaded){
            final user = state.user;
            ImageProvider avatarImage;
            if (user.profileImage != null && user.profileImage!.isNotEmpty) {
              final Uint8List bytes = base64Decode(user.profileImage!);
              avatarImage = MemoryImage(bytes);
            }
            else {
              avatarImage = const AssetImage("assets/images/User_Profile.png");
            }
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: avatarImage,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Editprofile(user: user)));
                      loadUser();
                    },
                    child: Text("Edit Profile")
                ),
                Text(
                  user.name,
                  style: TextStyle(
                    color: Color(0xFF9700A3),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  user.email,
                  style: TextStyle(
                    color: Color(0xFF9700A3),
                    fontSize: 14,
                    // fontWeight: FontWeight.bold
                  ),
                ),
              ],
            );


        }

        return const SizedBox.shrink();
      }


  );




  

}

//Stack(
//                 alignment: AlignmentDirectional.center,
//                 children: [
//                   Center(
//                     child: CircleAvatar(
//                       radius: 100,
//                       backgroundImage: AssetImage("assets/images/User_Profile.png"),
//                     ),
//                   ),
//                   Positioned(
//                     bottom: 0,
//                     right: MediaQuery.of(context).size.width/4,
//                     child: IconButton(
//                       onPressed: () {},
//                       icon: Icon(Icons.edit, color: Color(0xFF9700A3)),
//                       style: ButtonStyle(
//                         backgroundColor: WidgetStateProperty.all(Colors.white),
//                       ),
//                     ),
//                   ),
//                 ],
//               )