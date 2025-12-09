import 'package:depi_project/Repositories/user_repository.dart';
import 'package:depi_project/Screens/Splash/splash_screen.dart';
import 'package:depi_project/Screens/emailAuth.dart';
import 'package:depi_project/Screens/terms_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Bloc/user/user_bloc.dart';
import 'Bloc/user/user_event.dart';
import 'Colors/colors.dart';
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

  if (!isSeeded) {
    await seedDesignsPart1();
    await prefs.setBool('isSeeded', true);
  }
  runApp(
      MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => ThemeProvider()),
      Provider<DesignRepository>(create: (_) => DesignRepository()),
      Provider<FavoriteRepository>(create: (_) => FavoriteRepository()),
      Provider<SavedProjectRepository>(create: (_) => SavedProjectRepository()),
      Provider<UserRepository>(create: (_) => UserRepository()),
  ],child: BlocProvider(
        create: (_) {
          final repo = UserRepository();
          final bloc = UserBloc(repo);
          bloc.add(LoadUserEvent()); // 👈 أول ما الأبلكيشن يفتح يجيب بيانات اليوزر
          return bloc;
        },
        child: MyApp(isLoggedIn: isLoggedIn),
      ),
      ),
  );

}
class MyApp extends StatelessWidget {
  final bool isLoggedIn;
  const MyApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context); // أو context.watch<ThemeProvider>()
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      theme:ThemeData(
          useMaterial3: true,
          colorScheme: HueColorScheme,
          scaffoldBackgroundColor: HueColorScheme.background,
          appBarTheme: AppBarTheme(
            backgroundColor: HueColorScheme.primary,
            foregroundColor: HueColorScheme.onPrimary,
            elevation: 0,
          )),
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
        "EmailAuth": (context) =>EmailAuth(),
        "Terms": (context) =>TermsConditions()
      },

      home: isLoggedIn ? const SplashScreen() : const SplashScreenFirst(),
    );
  }
}

