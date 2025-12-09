import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Components/custom_button.dart';
import '../Components/text_field.dart';
import '../Models/user.dart';
import '../Repositories/user_repository.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController nameUser = TextEditingController();
  TextEditingController emailUser = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm_password = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final UserRepository userRepo = UserRepository();

  @override
  void dispose() {
    nameUser.dispose();
    emailUser.dispose();
    password.dispose();
    confirm_password.dispose();
    super.dispose();
  }

  Future<void> onSignupSuccess(String userEmail, BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', true);
    await prefs.setString('userEmail', userEmail);
    Navigator.pushReplacementNamed(context, "Home");
  }

  Future<void> signup(BuildContext context) async {
    if (!formKey.currentState!.validate()) {
      return;
    }

    final name = nameUser.text.trim();
    final email = emailUser.text.trim();
    final pass = password.text.trim();

    final exists = await userRepo.emailExists(email);

    if (exists) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Email already exists')),
      );
      return;
    }

    await userRepo.insertUser(
      User(email: email, name: name, password: pass),
    );
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Account created successfully')),
    );
    await onSignupSuccess(email, context);
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      // حتى لو الصورة مغطية، نخليها صح
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
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 550,
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
                      SizedBox(
                        width: 350,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sign up",
                              style: textTheme.titleLarge?.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: colorScheme.primary,
                              ),
                            ),
                            const SizedBox(height: 16),
                            CustomTextField(
                              keyboardType: TextInputType.name,
                              label: "Full Name",
                              controller: nameUser,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter a name";
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 21),
                            CustomTextField(
                              keyboardType: TextInputType.emailAddress,
                              label: "Email",
                              controller: emailUser,
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
                            const SizedBox(height: 21),
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
                            const SizedBox(height: 21),
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
                            const SizedBox(height: 42),
                            CustomButton(
                              text: "Next",
                              onPressed: () => signup(context),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: textTheme.bodySmall?.copyWith(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Log in",
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
