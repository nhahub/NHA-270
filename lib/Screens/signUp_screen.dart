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

  @override
  void dispose() {
    nameUser.dispose();
    emailUser.dispose();
    password.dispose();
    confirm_password.dispose();
    super.dispose();
  }

  final UserRepository userRepo = UserRepository();

  Future<void> onSignupSuccess(String userEmail,BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', true);
    await prefs.setString('userEmail', userEmail);
    Navigator.pushReplacementNamed(context, "Home");
  }

  Future<void> signup(BuildContext context) async {
    final name = nameUser.text.trim();
    final email = emailUser.text.trim();
    final pass = password.text.trim();
    final confirm = confirm_password.text.trim();



    if (name.isEmpty || email.isEmpty || pass.isEmpty || confirm.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Please fill all fields')));
      return;
    }

    if (pass != confirm) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Passwords do not match')));
      return;
    }

    final exists = await userRepo.emailExists(email);

    if (exists) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Email already exists')));
      return;
    }

    else {
      // لو كله تمام سجّل اليوزر
      await userRepo.insertUser(User(email: email, name: name, password: pass));
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Account created successfully')),
      );
      await onSignupSuccess(email, context);
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
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 550,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 350,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Sign up",
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 16),
                          CustomTextField(label: "Full Name", controller: nameUser),
                          const SizedBox(height: 21),
                          CustomTextField(label: "Email", controller: emailUser),
                          const SizedBox(height: 21),
                          CustomTextField(
                            label: "Password",
                            obscureText: true,
                            controller: password,
                          ),
                          const SizedBox(height: 21),
                          CustomTextField(
                            label: "Confirm Password",
                            obscureText: true,
                            controller: confirm_password,
                          ),
                          SizedBox(height: 42),
                          CustomButton(
                            text: "Next",
                            onPressed: () {
                              signup(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      },
                      child: const Text(
                        "Log in",
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
        ],
      ),
    );
  }
}
