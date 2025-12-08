import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Components/favorites_cards.dart';
import '../Models/designs.dart';
import '../Repositories/favorite_repository.dart';

class Favorites extends StatefulWidget {
  Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  late Future<List<Design>> favoritesFuture;

  @override
  void initState() {
    super.initState();
    favoritesFuture = Future.value([]);
    loadFavorites();
  }

  Future<void> loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final email = prefs.getString('userEmail');
    if (!mounted) return;

    if (email == null) {
      setState(() {
        favoritesFuture = Future.value([]);
      });
      return;
    }

    final favRepo = context.read<FavoriteRepository>();
    setState(() {
      favoritesFuture = favRepo.getFavoritesForUser(email);
    });
  }

  Future<void> removeFromFavorites(String designImage) async {
    final prefs = await SharedPreferences.getInstance();
    final email = prefs.getString('userEmail');
    if (email == null) return;

    final favRepo = context.read<FavoriteRepository>();
    await favRepo.removeFavorite(email, designImage);

    // إعادة تحميل الليست بعد الحذف
    await loadFavorites();
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
          "Favorites",
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
      ),
      body: _listViewFavorites(context, colorScheme, textTheme),
    );
  }

  Widget _listViewFavorites(
      BuildContext context, ColorScheme colorScheme, TextTheme textTheme) {
    return FutureBuilder<List<Design>>(
      future: favoritesFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(colorScheme.primary),
            ),
          );
        }

        if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(
            child: Text(
              "No favorites yet",
              style: textTheme.bodyMedium?.copyWith(
                // كان: Color(0xFF7F167F)
                color: colorScheme.onBackground.withOpacity(0.7),
                fontSize: 16,
              ),
            ),
          );
        }

        final favorites = snapshot.data!;
        return ListView.builder(
          itemCount: favorites.length,
          itemBuilder: (context, index) {
            return FavoritesCards(
              image: favorites[index].image,
              description: favorites[index].description,
              onDismiss: () => removeFromFavorites(favorites[index].image),
            );
          },
        );
      },
    );
  }
}

