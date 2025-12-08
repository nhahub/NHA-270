import 'package:depi_project/Screens/Customize.dart';
import 'package:depi_project/Screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Components/drawer_menu.dart';
import '../Components/page_switch.dart';
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
    // لو فعلاً مش بتستخدمه، تقدر تمسح السطر ده
    // final designRepo = context.read<DesignRepository>();

    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: colorScheme.background,

      appBar: AppBar(
        backgroundColor: colorScheme.surface,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Hues",
          style: textTheme.titleLarge?.copyWith(
            color: colorScheme.primary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        leading: DrawerButton(
          color: colorScheme.primary,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  transitionDuration: const Duration(milliseconds: 500),
                  pageBuilder: (context, animation, secondaryAnimation) =>
                   Profile(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    final offsetAnimation = Tween<Offset>(
                      begin: const Offset(1.0, 0.0),
                      end: Offset.zero,
                    ).animate(animation);

                    return SlideTransition(
                      position: offsetAnimation,
                      child: child,
                    );
                  },
                ),
              );
            },
            icon: Icon(
              Icons.person_outline,
              color: colorScheme.primary,
            ),
          ),
        ],
      ),

      drawer: Drawer(
        backgroundColor: colorScheme.primaryContainer,
        child: const DrawerMenu(),
      ),

      body: Column(
        children: [
          const SizedBox(height: 10),
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
              transitionBuilder:
                  (Widget child, Animation<double> animation) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              child: _selectedIndex == 0
                  ?  Customize(
                key: ValueKey('customize'),
              )
                  : const Designs(
                key: ValueKey('designs'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
