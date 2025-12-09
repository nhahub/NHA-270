import 'dart:math';
import 'package:depi_project/Screens/signUp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Components/custom_button.dart';
import '../Components/text_field.dart';
import '../Models/user.dart';
import '../Repositories/user_repository.dart';
import 'emailAuth.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final UserRepository userRepo = UserRepository();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  Future<void> onLoginSuccess(String userEmail, BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', true);
    await prefs.setString('userEmail', userEmail);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Login successful')),
    );

    Navigator.pushReplacementNamed(context, "Home");
  }


  Future<void> login(BuildContext context) async {
    if (!formKey.currentState!.validate()) {
      return;
    }

    final emailText = email.text.trim();
    final passText = password.text.trim();

    final User? user =
    await userRepo.getUserByEmailAndPassword(emailText, passText);

    if (user == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid email or password')),
      );
    } else {
      await onLoginSuccess(user.email, context);
    }
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
                        angle: 110 * pi / 180,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Log in",
                              style: textTheme.titleLarge?.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: colorScheme.primary,
                              ),
                            ),
                            const SizedBox(height: 16),
                            CustomTextField(
                              keyboardType: TextInputType.emailAddress,
                              label: "Email",
                              controller: email,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter an email";
                                }
                                if (!value.contains("@") ||
                                    !value.contains(".")) {
                                  return "Please enter a valid email";
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 24),
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
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => EmailAuth(),
                                      ),
                                    );
                                  },
                                  style: TextButton.styleFrom(
                                    tapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  child: Text(
                                    "Forget Password?",
                                    style: textTheme.bodySmall?.copyWith(
                                      // كان: Color(0xFF7F167F)
                                      color: colorScheme.primary,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 24),
                            CustomButton(
                              text: "Next",
                              onPressed: () => login(context),
                            ),
                            const SizedBox(height: 24),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account?",
                        style: textTheme.bodySmall?.copyWith(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "Sign up");
                        },
                        child: Text(
                          "Sign up",
                          style: textTheme.bodySmall?.copyWith(
                            // كان: Color(0xFFCB1C8D)
                            color: colorScheme.secondary,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

