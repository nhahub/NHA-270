import 'package:flutter/material.dart';
import '../Screens/designDetails.dart';

class DesignsCard extends StatelessWidget {
  final String description;
  final String image;

  const DesignsCard({
    super.key,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme   = Theme.of(context).textTheme;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 700),
              pageBuilder: (context, animation, secondaryAnimation) =>
                  Designdetails(
                    image: image,
                    description: description,
                  ),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                final scaleAnimation = Tween<double>(
                  begin: 0.7,
                  end: 1.0,
                ).animate(
                  CurvedAnimation(
                    parent: animation,
                    curve: Curves.easeOut,
                  ),
                );

                return ScaleTransition(
                  scale: scaleAnimation,
                  child: child,
                );
              },
            ),
          );
        },
        child: Container(
          width: 100,
          height: 112,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: [
                // كان: Color(0xFFFF08FF).withOpacity(0.05)...
                colorScheme.secondary.withOpacity(0.08),
                colorScheme.primary.withOpacity(0.14),
              ],
            ),
            border: Border.all(
              color: colorScheme.primary.withOpacity(0.18),
              width: 1,
            ),
          ),
          child: Row(
            children: [
              const SizedBox(width: 16),
              SizedBox(
                width: 190,
                height: 88,
                child: Text(
                  description,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.bodySmall?.copyWith(
                    // كان: Color(0xFF7F167F)
                    color: colorScheme.primary,
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Hero(
                tag: image,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    image,
                    width: 120,
                    height: 88,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
