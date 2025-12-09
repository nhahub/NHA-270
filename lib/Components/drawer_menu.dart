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
    final colorScheme   = Theme.of(context).colorScheme;
    final textTheme     = Theme.of(context).textTheme;

    Color headerBg = colorScheme.primary.withOpacity(0.14);
    Color headerBorder = colorScheme.primary.withOpacity(0.18);
    Color headerText = colorScheme.primary;

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
                  Widget buildHeader({
                    required String title,
                    String? subtitle,
                    ImageProvider? avatar,
                  }) {
                    return DrawerHeader(
                      decoration: BoxDecoration(
                        color: headerBg,
                        border: Border(
                          bottom: BorderSide(
                            color: headerBg,
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            avatar ?? const AssetImage("assets/images/User_Profile.png"),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: textTheme.bodyLarge?.copyWith(
                                  color: headerText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              if (subtitle != null)
                                Text(
                                  subtitle,
                                  style: textTheme.bodySmall?.copyWith(
                                    color: headerText.withOpacity(0.9),
                                    fontSize: 12,
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }

                  // Loading / Initial
                  if (state is UserLoading || state is UserInitial) {
                    return buildHeader(title: "Loading...");
                  }

                  // Error / no user
                  if (state is UserError) {
                    return buildHeader(title: "Guest User");
                  }

                  if (state is! UserLoaded) {
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

                  return buildHeader(
                    title: user.name,
                    subtitle: user.email,
                    avatar: avatarImage,
                  );
                },
              ),
            ),

            // --- Menu Items ---
            ListTile(
              title: const Text("New chat"),
              leading: const Icon(Icons.edit),
              textColor: colorScheme.primary,
              iconColor: colorScheme.primary,
              onTap: () {
                Navigator.pushNamed(context, "Home");
              },
            ),
            ListTile(
              title: const Text("Saved projects"),
              leading: const Icon(Icons.bookmark_border),
              textColor: colorScheme.primary,
              iconColor: colorScheme.primary,
              onTap: () {
                Navigator.pushNamed(context, "Saved Projects");
              },
            ),
            ListTile(
              title: const Text("Favorites"),
              leading: const Icon(Icons.favorite_border),
              textColor: colorScheme.primary,
              iconColor: colorScheme.primary,
              onTap: () {
                Navigator.pushNamed(context, "Favorite");
              },
            ),
            ListTile(
              title: const Text("Terms & conditions"),
              leading: const Icon(Icons.settings_outlined),
              textColor: colorScheme.primary,
              iconColor: colorScheme.primary,
              onTap: () {
                Navigator.pushNamed(context, "Terms");
              },
            ),
          ],
        ),

        // --- Color Scheme section ---
        Positioned(
          bottom: 100,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: colorScheme.primary,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "Color Scheme",
                      style: textTheme.bodyMedium?.copyWith(
                        color: colorScheme.primary,
                      ),
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
