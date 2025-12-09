import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PopUpLogout extends StatelessWidget {
  const PopUpLogout({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AlertDialog(
      backgroundColor: colorScheme.surface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Center(
        child: Text(
          "Log out",
          style: TextStyle(
            color: colorScheme.primary,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      content: Text(
        "Are you sure you want to log out?",
        style: TextStyle(color: colorScheme.onSurface),
      ),

      actionsPadding: const EdgeInsets.only(bottom: 12, left: 12, right: 12),
      actions: [
        Row(
          children: [
            // Cancel
            Expanded(
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorScheme.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text("Cancel",
                    style: TextStyle(color: Colors.white)),
              ),
            ),

            const SizedBox(width: 10),

            // Yes (logout)
            Expanded(
              child: ElevatedButton(
                onPressed: () async {
                  Navigator.pop(context);
                  await logout();
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    "First Splash",
                        (_) => false,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorScheme.surface,
                  side: BorderSide(color: colorScheme.primary, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Yes",
                  style: TextStyle(
                    color: colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

Future<void> logout() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('isLoggedIn', false);
  await prefs.remove('userEmail');
}
