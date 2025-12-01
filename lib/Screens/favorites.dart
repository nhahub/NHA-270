import 'package:flutter/material.dart';
import '../Components/favorites_cards.dart';

Map<String, String> favorites = {
  "assets/images/design1.png":
      "A modern, open-cost concept house with 2 bedrooms, a home office, and a large kitchen island. Include a master bathroom with a walk-in shower.",
  "assets/images/design2.png":
      "Cozy 1-bedroom apartment with a small balcony, a combined living and dining area, and plenty of natural light.",
  "assets/images/design3.png":
      "A modern, open-cost concept house with 2 bedrooms, a home office, and a large kitchen island. Include a master bathroom with a walk-in shower.",
  "assets/images/design4.png":
      "Cozy 1-bedroom apartment with a small balcony, a combined living and dining area, and plenty of natural light.",
  "assets/images/design5.png":
      "A modern, open-cost concept house with 2 bedrooms, a home office, and a large kitchen island. Include a master bathroom with a walk-in shower.",
  "assets/images/design6.png":
      "Cozy 1-bedroom apartment with a small balcony, a combined living and dining area, and plenty of natural light.",
};

class Favorites extends StatelessWidget {
  Favorites({super.key});

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
}



Widget ListViewFavorires() {
  return ListView.builder(
    itemCount: favorites.length,
    itemBuilder: (context, index) {
      return FavoritesCards(
        image: favorites.keys.elementAt(index),
        description: favorites.values.elementAt(index),
      );
    },
  );
}
