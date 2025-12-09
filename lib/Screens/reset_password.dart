import 'dart:math';
import 'package:flutter/material.dart';

import '../Components/custom_button.dart';
import '../Components/text_field.dart';
import '../Repositories/user_repository.dart';

class ResetPassword extends StatelessWidget {
  final String email;
  ResetPassword({super.key, required this.email});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirm_password = TextEditingController();
  final UserRepository userRepo = UserRepository();

  Future<void> reset(BuildContext context) async {
    if (!formKey.currentState!.validate()) {
      return;
    }

    final userEmail = email.trim();
    final newPass = password.text.trim();

    final exists = await userRepo.emailExists(email);

    if (exists) {
      await userRepo.updateUserPassword(
        email: userEmail,
        newPassword: newPass,
      );
    }
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Password updated successfully')),
    );
    Navigator.pushReplacementNamed(context, "Log in");
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: colorScheme.background,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/images/Placeholder Square.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          SingleChildScrollView(
            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUnfocus,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Transform.rotate(
                        angle: -110 * pi / 180,
                        child: Container(
                          height: 510,
                          width: 490,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            // كان: Colors.white
                            color: colorScheme.surface.withOpacity(0.96),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 18,
                                offset: const Offset(0, 10),
                                color:
                                colorScheme.shadow.withOpacity(0.12),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 350,
                        child: Column(
                          children: [
                            Text(
                              "Reset Password",
                              style: textTheme.titleLarge?.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: colorScheme.primary,
                              ),
                            ),
                            const SizedBox(height: 16),
                            CustomTextField(
                              label: "Password",
                              obscureText: true,
                              controller: password,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter a password";
                                }
                                if (value.length < 6) {
                                  return "Password must be at least 6 characters";
                                }
                                if (!value.contains(RegExp('[a-z]'))) {
                                  return "Password must contain at least one lowercase letter";
                                }
                                if (!value.contains(RegExp('[A-Z]'))) {
                                  return "Password must contain at least one uppercase letter";
                                }
                                if (!value.contains(RegExp('[0-9]'))) {
                                  return "Password must contain at least one number";
                                }
                                if (!value.contains(
                                    RegExp('[!@#\$&*~]'))) {
                                  return "Password must contain at least one special character";
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 24),
                            CustomTextField(
                              label: "Confirm Password",
                              obscureText: true,
                              controller: confirm_password,
                              validator: (value) {
                                if (value == null ||
                                    value.trim().isEmpty) {
                                  return 'Please confirm password';
                                }
                                if (value != password.text) {
                                  return 'Passwords do not match';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 48),
                            CustomButton(
                              text: "Next",
                              onPressed: () => reset(context),
                            ),
                            const SizedBox(height: 24),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
