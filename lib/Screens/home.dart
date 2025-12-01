import 'package:depi_project/Screens/Customize.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Components/drawer_menu.dart';
import '../Components/page_switch.dart';
import '../Providers/theme_provider.dart';
import '../Repositories/design_repository.dart';
import 'designs.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // 0 = Customize, 1 = Design
  @override
  Widget build(BuildContext context) {
    final designRepo = context.read<DesignRepository>();
    return Scaffold(
      // backgroundColor: Color(0xFFFFDDF2),
      appBar: AppBar(
        // backgroundColor: Color(0xFFFFDDF2),
        title: Text(
          "Hues",
          style: TextStyle(
            color: Color(0xFF7F167F),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: DrawerButton(color: Color(0xFF7F167F)),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "Profile");
            },
            icon: Icon(Icons.person_outline, color: Color(0xFF7F167F)),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFFFFCAFA),
        child: DrawerMenu(),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TopSegmentedSwitch(
              initialIndex: _selectedIndex,
              onChanged: (i) => setState(() => _selectedIndex = i),
            ),
          ),
      Expanded(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (Widget child, Animation<double> animation) {
            // هنا نختار نوع الـ animation
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          child: _selectedIndex == 0
              ? Customize(
            key: const ValueKey('customize'),
          )
              :  Designs(
            key: ValueKey('designs'),
          ),
        ),
      ),

        ],
      ),
    );
  }
}
