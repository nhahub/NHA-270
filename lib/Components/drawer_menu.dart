import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Bloc/user/user_bloc.dart';
import '../Bloc/user/user_state.dart';
import '../Models/user.dart';
import '../Providers/theme_provider.dart';
import 'custome_switch.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();

    return Stack(
      children: [
        Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "Profile");
              },
              child: BlocBuilder<UserBloc, UserState>(
                builder: (context, state) {
                  // حالة Loading أو Initial → هعرض Header بسيط
                  if (state is UserLoading || state is UserInitial) {
                    return DrawerHeader(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF08FF).withOpacity(0.26),
                        border: Border(
                          bottom: BorderSide(
                            color: const Color(0xFFFF08FF).withOpacity(0.26),
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              "assets/images/User_Profile.png",
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Loading...",
                            style: TextStyle(
                              color: Color(0xFF9700A3),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  }

                  // لو حصل Error أو مفيش يوزر
                  if (state is UserError) {
                    return DrawerHeader(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF08FF).withOpacity(0.26),
                        border: Border(
                          bottom: BorderSide(
                            color: const Color(0xFFFF08FF).withOpacity(0.26),
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              "assets/images/User_Profile.png",
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Guest User",
                            style: TextStyle(
                              color: Color(0xFF9700A3),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  }

                  if (state is! UserLoaded) {
                    // fallback احتياطي
                    return const SizedBox.shrink();
                  }

                  final User user = state.user;

                  ImageProvider avatarImage;
                  if (user.profileImage != null &&
                      user.profileImage!.isNotEmpty) {
                    final Uint8List bytes = base64Decode(user.profileImage!);
                    avatarImage = MemoryImage(bytes);
                  } else {
                    avatarImage =
                    const AssetImage("assets/images/User_Profile.png");
                  }

                  return DrawerHeader(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF08FF).withOpacity(0.26),
                      border: Border(
                        bottom: BorderSide(
                          color: const Color(0xFFFF08FF).withOpacity(0.26),
                        ),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: avatarImage,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              user.name,
                              style: const TextStyle(
                                color: Color(0xFF9700A3),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              user.email,
                              style: const TextStyle(
                                color: Color(0xFF9700A3),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ), // profile header

            ListTile(
              title: const Text("New chat"),
              leading: const Icon(Icons.edit),
              textColor: const Color(0xFF9700A3),
              iconColor: const Color(0xFF9700A3),
              onTap: () {
                Navigator.pushNamed(context, "Home");
              },
            ),
            ListTile(
              title: const Text("Saved projects"),
              leading: const Icon(Icons.bookmark_border),
              textColor: const Color(0xFF9700A3),
              iconColor: const Color(0xFF9700A3),
              onTap: () {
                Navigator.pushNamed(context, "Saved Projects");
              },
            ),
            ListTile(
              title: const Text("Favorites"),
              leading: const Icon(Icons.favorite_border),
              textColor: const Color(0xFF9700A3),
              iconColor: const Color(0xFF9700A3),
              onTap: () {
                Navigator.pushNamed(context, "Favorite");
              },
            ),
            ListTile(
              title: const Text("Terms & conditions"),
              leading: const Icon(Icons.settings_outlined),
              textColor: const Color(0xFF9700A3),
              iconColor: const Color(0xFF9700A3),
              onTap: () {
                Navigator.pushNamed(context, "Terms");
              },
            ),
          ],
        ),

        // Color Scheme section
        Positioned(
          bottom: 100,
          left: 0,
          right: 0,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.info_outline, color: Color(0xFF9700A3)),
                    SizedBox(width: 8),
                    Text(
                      "Color Scheme",
                      style: TextStyle(color: Color(0xFF9700A3)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ColorSchemeToggle(
                initialIsLight: themeProvider.isLight,
                onChanged: (isLight) {
                  context.read<ThemeProvider>().setTheme(isLight);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
