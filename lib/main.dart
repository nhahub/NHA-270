import 'package:depi_project/Repositories/user_repository.dart';
import 'package:depi_project/Screens/Splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Providers/theme_provider.dart';
import 'Repositories/design_repository.dart';
import 'Repositories/favorite_repository.dart';
import 'Repositories/saved_projects_repository.dart';
import 'Screens/Splash/splash_screen_first.dart';
import 'Screens/favorites.dart';
import 'Screens/customize.dart';
import 'Screens/home.dart';
import 'Screens/login_screen.dart';
import 'Screens/profile.dart';
import 'Screens/savedProjects.dart';
import 'Screens/signUp_screen.dart';
import 'Seed/seed_designs.dart';


Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
  final bool isSeeded = prefs.getBool('isSeeded') ?? false;

  // لو أول مرة → اعمل Insert للـ Designs
  if (!isSeeded) {
    await seedDesignsPart1();   // 👈 هنا بيشتغل الـ SEED
    await prefs.setBool('isSeeded', true);
  }
  runApp(
      MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => ThemeProvider()),
      Provider<DesignRepository>(create: (_) => DesignRepository()),
      Provider<FavoriteRepository>(create: (_) => FavoriteRepository()),
      Provider<SavedProjectRepository>(create: (_) => SavedProjectRepository()),
      Provider<UserRepository>(create: (_) => UserRepository()),
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
        "First Splash": (context) => SplashScreenFirst(),
      },
      home: isLoggedIn ? const SplashScreen() : const SplashScreenFirst(),
    );
  }
}
