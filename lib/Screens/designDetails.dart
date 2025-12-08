import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Components/zoom_image.dart';
import '../Repositories/favorite_repository.dart';

class Designdetails extends StatefulWidget {
  final String image;
  final String description;

  const Designdetails({
    super.key,
    required this.image,
    required this.description,
  });

  @override
  State<Designdetails> createState() => _DesigndetailsState();
}

class _DesigndetailsState extends State<Designdetails> {
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    checkIfFavorite();
  }

  Future<void> checkIfFavorite() async {
    final prefs = await SharedPreferences.getInstance();
    final email = prefs.getString('userEmail');
    if (email == null) return;
    final favRepo = context.read<FavoriteRepository>();
    final exists = await favRepo.isFavorite(email, widget.image);
    setState(() {
      isFavorite = exists;
    });
  }

  Future<void> toggleFavorite() async {
    final prefs = await SharedPreferences.getInstance();
    final email = prefs.getString('userEmail');
    if (email == null) return;
    final favRepo = context.read<FavoriteRepository>();
    if (isFavorite) {
      await favRepo.removeFavorite(email, widget.image);
    } else {
      await favRepo.addFavorite(email, widget.image);
    }
    setState(() {
      isFavorite = !isFavorite;
    });
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
          "Design Details",
          style: textTheme.titleLarge?.copyWith(
            // كان: Color(0xFF9700A3)
            color: colorScheme.primary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: BackButton(
          // كان: Color(0xFF9700A3)
          color: colorScheme.primary,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              // كان: Color(0xFF9700A3)
              color: colorScheme.primary,
            ),
          ),
        ],
      ),

      body: Stack(
        children: [
          // الهيدر اللي ورا بالصورة / الجradient
          Container(
            height: 250,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  // كان: Color(0xFFFF08FF).withOpacity(0.26),
                  //      Color(0xFFFF08FF).withOpacity(0.36),
                  colorScheme.primary.withOpacity(0.18),
                  colorScheme.secondary.withOpacity(0.30),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Hero(
                  tag: widget.image,
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        animationStyle: AnimationStyle(
                          curve: Curves.easeIn,
                          duration: const Duration(milliseconds: 200),
                        ),
                        useRootNavigator: true,
                        barrierColor: Colors.black.withOpacity(0.85),
                        barrierDismissible: true,
                        context: context,
                        builder: (_) => ZoomImage(
                          image: AssetImage(widget.image),
                        ),
                      );
                    },
                    child: Image.asset(
                      widget.image,
                      width: 400,
                      height: 400,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Description text
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Description",
                              style: textTheme.titleMedium?.copyWith(
                                // كان: Color(0xFF9700A3)
                                color: colorScheme.primary,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 16),
                            SizedBox(
                              width: 300,
                              child: Text(
                                widget.description,
                                style: textTheme.bodyMedium?.copyWith(
                                  color: colorScheme.onBackground,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Favorite icon
                    IconButton(
                      onPressed: toggleFavorite,
                      icon: Icon(
                        isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        size: 32,
                        // كان: Color(0xFF9700A3)
                        color: colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
