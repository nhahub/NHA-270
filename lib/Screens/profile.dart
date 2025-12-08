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

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      // كان: Color(0xFFFFDDF2)
      backgroundColor: colorScheme.background,
      appBar: AppBar(
        // كان: Color(0xFFFFDDF2)
        backgroundColor: colorScheme.surface,
        elevation: 0,
        title: Text(
          "Profile",
          style: textTheme.titleLarge?.copyWith(
            // كان: Color(0xFF7F167F)
            color: colorScheme.primary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: BackButton(
          // كان: Color(0xFF7F167F)
          color: colorScheme.primary,
        ),
        actions: [
          IconButton(
            onPressed: () => showDialog(
              context: context,
              builder: (context) => const PopUpLogout(),
            ),
            icon: Icon(
              Icons.logout,
              // كان: Color(0xFF7F167F)
              color: colorScheme.primary,
            ),
          ),
        ],
      ),
      body: Profile_Body(context, userFuture, loadUser),
    );
  }
}

/// تظبيط Profile_Body على الثيم برضه
Widget Profile_Body(
    BuildContext context,
    Future<User?> userFuture,
    Future<User?> Function() loadUser,
    ) {
  final colorScheme = Theme.of(context).colorScheme;
  final textTheme = Theme.of(context).textTheme;

  return BlocBuilder<UserBloc, UserState>(
    builder: (context, state) {
      if (state is UserLoading || state is UserInitial) {
        return Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(colorScheme.primary),
          ),
        );
      }

      if (state is UserError) {
        return Center(
          child: Text(
            state.message,
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.error, // كان: Color(0xFF7F167F)
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        );
      }

      if (state is UserLoaded) {
        final user = state.user;

        ImageProvider avatarImage;
        if (user.profileImage != null && user.profileImage!.isNotEmpty) {
          final Uint8List bytes = base64Decode(user.profileImage!);
          avatarImage = MemoryImage(bytes);
        } else {
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
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Editprofile(user: user),
                  ),
                ).then((_) {
                  // بعد الرجوع ممكن تعيد تحميل البيانات عن طريق الـ Bloc
                  // أو تسيبها زي ما هي لو الـ Bloc محدثها
                });
              },
              child: Text(
                "Edit Profile",
                style: textTheme.bodyMedium?.copyWith(
                  color: colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              user.name,
              style: textTheme.titleMedium?.copyWith(
                // كان: Color(0xFF9700A3)
                color: colorScheme.primary,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              user.email,
              style: textTheme.bodyMedium?.copyWith(
                // كان: Color(0xFF9700A3)
                color: colorScheme.onBackground.withOpacity(0.8),
                fontSize: 14,
              ),
            ),
          ],
        );
      }

      return const SizedBox.shrink();
    },
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