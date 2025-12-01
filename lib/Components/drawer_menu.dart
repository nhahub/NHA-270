import 'package:flutter/material.dart';
import 'custome_switch.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';           // 👈 مهم
import '../Providers/theme_provider.dart';        // 👈 مهم
import 'custome_switch.dart';                    // ColorSchemeToggle


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
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFFFF08FF).withOpacity(0.26),
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFFF08FF).withOpacity(0.26),
                    ),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/User_Profile.png"),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "User Name",
                          style: TextStyle(
                            color: Color(0xFF9700A3),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "UserEmail@gmail.com",
                          style: TextStyle(
                            color: Color(0xFF9700A3),
                            fontSize: 12,
                            // fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ), //profile
            ListTile(
              title: Text("New chat"),
              leading: Icon(Icons.edit),
              textColor: Color(0xFF9700A3),
              iconColor: Color(0xFF9700A3),
              onTap: () {
                Navigator.pushNamed(context, "Home");
              },
            ),
            ListTile(
              title: Text("Saved projects"),
              leading: Icon(Icons.bookmark_border),
              textColor: Color(0xFF9700A3),
              iconColor: Color(0xFF9700A3),
              onTap: () {
                Navigator.pushNamed(context, "Saved Projects");

              },
            ),
            ListTile(
              title: Text("Favorites"),
              leading: Icon(Icons.favorite_border),
              textColor: Color(0xFF9700A3),
              iconColor: Color(0xFF9700A3),
              onTap: () {
                Navigator.pushNamed(context, "Favorite");
              },
            ),
            ListTile(
              title: Text("Terms & conditions"),
              leading: Icon(Icons.settings_outlined),
              textColor: Color(0xFF9700A3),
              iconColor: Color(0xFF9700A3),
              onTap: () {},
            ),
            // ListTile(
            //   title: Text("Log out"),
            //   leading: Icon(Icons.logout),
            //   textColor: Color(0xFF9700A3),
            //   iconColor: Color(0xFF9700A3),
            //   onTap: () {},
            // ),
          ],
        ),
        Positioned(
          // top: 100,
          bottom: 50,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.info_outline, color: Color(0xFF9700A3)),
                    Text(
                      "Color Scheme",
                      style: TextStyle(color: Color(0xFF9700A3)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              ColorSchemeToggle(
                initialIsLight: themeProvider.isLight,
                onChanged: (isLight) {
                  context.read<ThemeProvider>().setTheme(isLight);
                },
              ),
            ],
          ),
        ), // switch
      ],
    );
  }
}
