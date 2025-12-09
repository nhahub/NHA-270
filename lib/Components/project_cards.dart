import 'package:intl/intl.dart';
import 'package:depi_project/Screens/Project.dart';
import 'package:flutter/material.dart';

class ProjectCards extends StatelessWidget {
  final String title;
  final String description;
  final String imageBase64;
  final String time;
  final VoidCallback? onDismiss;

  const ProjectCards({
    super.key,
    required this.title,
    required this.description,
    required this.time,
    required this.imageBase64,
    this.onDismiss,
  });

  String formatTime(String createdAt) {
    final date = DateTime.parse("${createdAt}Z");
    return DateFormat('hh:mm a').format(date); // مثال: 07:15 AM
  }

  String formatDate(String createdAt) {
    final date = DateTime.parse(createdAt);
    return DateFormat('dd/MM/yyyy').format(date); // مثال: 05/12/2025
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme   = Theme.of(context).textTheme;

    return Dismissible(
      direction: DismissDirection.endToStart,
      key: ValueKey(title),
      onDismissed: (direction) {
        if (onDismiss != null) {
          onDismiss!();
        }
      },

      // خلفية الـ swipe للحذف
      background: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: colorScheme.error.withOpacity(0.12),
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 24),
        child: Icon(
          Icons.delete_outline,
          color: colorScheme.error,
        ),
      ),

      child: Card(
        elevation: 0,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              colors: [
                // كان: FF08FF و 7BAEFF
                colorScheme.primary.withOpacity(0.08),
                colorScheme.primary.withOpacity(0.28),
              ],
            ),
            border: Border.all(
              color: colorScheme.primary.withOpacity(0.18),
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.only(
                    left: 8,
                    right: 8,
                    top: 4,
                    bottom: 24, // سيب مساحة للوقت تحت
                  ),
                  leading: Icon(
                    Icons.auto_fix_high,
                    color: colorScheme.onPrimaryContainer,
                  ),
                  title: Text(
                    title,
                    style: textTheme.bodyLarge?.copyWith(
                      color: colorScheme.onPrimaryContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.bodySmall?.copyWith(
                      color: colorScheme.onPrimaryContainer.withOpacity(0.9),
                    ),
                  ),
                  trailing: Text(
                    formatDate(time),
                    style: textTheme.bodySmall?.copyWith(
                      color: colorScheme.onPrimaryContainer,
                      fontSize: 12,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Project(
                          title: title,
                          description: description,
                          imageBase64: imageBase64,
                        ),
                      ),
                    );
                  },
                  isThreeLine: true,
                ),

                // الوقت تحت على اليمين
                Positioned(
                  bottom: 4,
                  right: 8,
                  child: Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        size: 16,
                        color: colorScheme.onPrimaryContainer,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        formatTime(time),
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.onPrimaryContainer,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
