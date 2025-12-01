import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Components/favorites_cards.dart';
import '../Models/designs.dart';
import '../Repositories/favorite_repository.dart';

// Map<String, String> favorites = {
//   "assets/images/design1.png":
//       "A modern, open-cost concept house with 2 bedrooms, a home office, and a large kitchen island. Include a master bathroom with a walk-in shower.",
//   "assets/images/design2.png":
//       "Cozy 1-bedroom apartment with a small balcony, a combined living and dining area, and plenty of natural light.",
//   "assets/images/design3.png":
//       "A modern, open-cost concept house with 2 bedrooms, a home office, and a large kitchen island. Include a master bathroom with a walk-in shower.",
//   "assets/images/design4.png":
//       "Cozy 1-bedroom apartment with a small balcony, a combined living and dining area, and plenty of natural light.",
//   "assets/images/design5.png":
//       "A modern, open-cost concept house with 2 bedrooms, a home office, and a large kitchen island. Include a master bathroom with a walk-in shower.",
//   "assets/images/design6.png":
//       "Cozy 1-bedroom apartment with a small balcony, a combined living and dining area, and plenty of natural light.",
// };

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
      favoritesFuture = favRepo.getFavoritesForUser(email); // مش كل الفيفوريتس
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
    return Scaffold(
      backgroundColor: Color(0xFFFFDDF2),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFDDF2),
        title: Text("Favorites",
            style: TextStyle(
                color: Color(0xFF7F167F),
                fontWeight: FontWeight.bold,
                fontSize: 20

            )),
        centerTitle: true,
        leading: BackButton(color: Color(0xFF7F167F)),
      ),
      body: ListViewFavorires(),
    );
  }








  Widget ListViewFavorires() {
    return FutureBuilder<List<Design>>(
        future: favoritesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text(
                "No favorites yet",
                style: TextStyle(
                  color: Color(0xFF7F167F),
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
        }

    );
  }

}









