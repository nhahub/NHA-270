import 'package:depi_project/Screens/Project.dart';
import 'package:depi_project/Screens/Splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'Providers/theme_provider.dart';
import 'Repositories/design_repository.dart';
import 'Screens/Splash/splash_screen_first.dart';
import 'Screens/favorites.dart';
import 'Screens/customize.dart';
import 'Screens/home.dart';
import 'Screens/login_screen.dart';
import 'Screens/profile.dart';
import 'Screens/savedProjects.dart';
import 'Screens/signUp_screen.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

  runApp(
      MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => ThemeProvider()),
      Provider<DesignRepository>(create: (_) => DesignRepository()),
  ],child: MyApp(isLoggedIn: isLoggedIn,)
  ));
}
class MyApp extends StatelessWidget {
  final bool isLoggedIn;
  const MyApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context); // أو context.watch<ThemeProvider>()
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      themeMode: themeProvider.currentTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        "Home": (context) => HomeScreen(),
        "Profile": (context) => Profile(),
        "Customize": (context) => Customize(),
        "Favorite": (context) => Favorites(),
        "Saved Projects": (context) => Savedprojects(),
        "Log in": (context) => LoginScreen(),
        "Sign up": (context) => SignupScreen(),
      },
      home: isLoggedIn ? const SplashScreen() : const SplashScreenFirst(),
    );
  }
}
