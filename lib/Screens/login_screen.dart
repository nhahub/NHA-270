import 'dart:math';
import 'package:depi_project/Screens/signUp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Components/custom_button.dart';
import '../Components/text_field.dart';
import '../Models/user.dart';
import '../Repositories/user_repository.dart';
import 'forget_password.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  final UserRepository userRepo = UserRepository();

  Future<void> onLoginSuccess(String userEmail, BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', true);
    await prefs.setString('userEmail', userEmail);
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Login successful')));

    Navigator.pushReplacementNamed(context, "Home");
  }

  Future<void> login(BuildContext context) async {
    final emailText = email.text.trim();
    final passText = password.text.trim();

    if (emailText.isEmpty || passText.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter email and password')),
      );
      return;
    }

    final User? user = await userRepo.getUserByEmailAndPassword(
      emailText,
      passText,
    );

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
    return Scaffold(
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
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 350,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Log in",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ), //log in
                          SizedBox(height: 16),
                          CustomTextField(label: "Email", controller: email),
                          const SizedBox(height: 24),
                          CustomTextField(
                            label: "Password",
                            obscureText: true,
                            controller: password,
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
                                      builder: (context) => ForgetPassword(),
                                    ),
                                  );
                                },
                                style: TextButton.styleFrom(
                                  tapTargetSize: MaterialTapTargetSize
                                      .shrinkWrap, // optional لتقليل المساحة
                                ),
                                child: const Text(
                                  "Forget Password?",
                                  style: TextStyle(
                                    color: Color(0xFF7F167F),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 24),
                          CustomButton(
                            text: "Next",
                            onPressed: () {
                              login(context);
                            },
                          ),
                          SizedBox(height: 24)
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
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "Sign up");
                      },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          color: Color(0xFFCB1C8D),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )


        ]
      )
    );
  }
}





