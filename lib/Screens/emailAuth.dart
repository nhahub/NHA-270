import 'dart:math';
import 'package:flutter/material.dart';
import 'package:otp/otp.dart';
import '../Components/custom_button.dart';
import '../Components/text_field.dart';
import '../Models/user.dart';
import '../Repositories/user_repository.dart';
import '../Utils/otp_dialog.dart';
import 'forget_password.dart';

class EmailAuth extends StatelessWidget {
  EmailAuth({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final UserRepository userRepo = UserRepository();

  String generateTimeOtp() {
    final secret = 'MY_SECRET_KEY';
    final code = OTP.generateTOTPCodeString(
      secret,
      DateTime.now().millisecondsSinceEpoch,
      interval: 100, // الكود صالح 5 دقايق
      length: 4,
    );
    return code;
  }

  Future<void> EmailAdded(BuildContext context) async {
    if (!formKey.currentState!.validate()) {
      return; // لو فيه error في أي حقل، متكمليش
    }
    final enteredEmail = email.text.trim();
    final User? user = await userRepo.getUserByEmail(enteredEmail);

    if (user == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid email')),
      );
      return;
    }

    final code = generateTimeOtp();
    final expiresAt = DateTime.now().add(const Duration(minutes: 5));

    await showOtpEmailDialog(
      context,
      appName: "HUES",
      email: enteredEmail,
      code: code,
      expiresAt: expiresAt,
    );

    print("OTP is: $code");

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ForgetPassword(
          email: email.text.trim(),
          otpCode: code,
          expiresAt: expiresAt,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      // نخلي الخلفية ماشية مع الثيم
      backgroundColor: colorScheme.background,
      body: Stack(
        alignment: Alignment.center,
        children: [
          // الخلفية بالصورة زي ما هي
          Image.asset(
            "assets/images/Placeholder Square.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),

          // ممكن تحب تضيف Overlay خفييف:
          // Positioned.fill(
          //   child: Container(
          //     color: colorScheme.background.withOpacity(0.85),
          //   ),
          // ),

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
                      Container(
                        height: 410,
                        width: 490,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          // كان: Colors.white
                          color: colorScheme.surface.withOpacity(0.96),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 18,
                              offset: const Offset(0, 10),
                              color: colorScheme.shadow.withOpacity(0.12),
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
                              "Verification",
                              style: textTheme.titleLarge?.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: colorScheme.primary,
                              ),
                            ),
                            const SizedBox(height: 24),
                            Text(
                              "Enter your email address to receive the verification (OTP) code.",
                              textAlign: TextAlign.center,
                              style: textTheme.bodyMedium?.copyWith(
                                color: colorScheme.onBackground
                                    .withOpacity(0.8),
                              ),
                            ),
                            const SizedBox(height: 24),
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

                            const SizedBox(height: 8),

                            const SizedBox(height: 24),
                            CustomButton(
                              text: "Next",
                              onPressed: () => EmailAdded(context),
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
          )
        ],
      ),
    );
  }
}


