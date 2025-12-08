import 'package:flutter/material.dart';

import '../Screens/designDetails.dart';

class FavoritesCards extends StatelessWidget {
  final String image;
  final String description;
  final VoidCallback? onDismiss;
  const FavoritesCards({super.key, required this.image, required this.description, this.onDismiss});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 700),
              pageBuilder: (context, animation, secondaryAnimation) => Designdetails(image: image,description: description,),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                final scaleAnimation = Tween<double>(begin: 0.7, end: 1.0)
                    .animate(CurvedAnimation(parent: animation, curve: Curves.easeOut));

                return ScaleTransition(
                  scale: scaleAnimation,
                  child: child,
                );
              },
            ),
          );

        },
        child: Dismissible(
          direction: DismissDirection.endToStart,
          key: ValueKey(image),
          onDismissed: (_){
            if(onDismiss != null){
              onDismiss!();
            }
          },
          child: Container(
            width: 100,
            height: 112,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                  colors: [
                    Color(0xFFFFF58A).withOpacity(0.05),
                    Color(0xFFDD7BDF).withOpacity(0.5)
                  ]
              ),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Hero(
                  tag: image,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(image,
                      width: 120,
                      height: 88,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                SizedBox(
                  width: 190,
                  height: 88,
                  child: Text(description,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Color(0xFF7F167F),
                      fontSize: 12,
                    ),
                  ),
          
                ),
                SizedBox(width: 16,),
          
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
