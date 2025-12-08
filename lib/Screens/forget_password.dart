import 'dart:async';
import 'package:depi_project/Screens/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:otp/otp.dart';

import '../Components/custom_button.dart';
import '../Components/verification_box.dart';
import '../Utils/otp_dialog.dart';

class ForgetPassword extends StatefulWidget {
  final String email;
  final String otpCode;
  final DateTime expiresAt;

  const ForgetPassword({
    super.key,
    required this.email,
    required this.otpCode,
    required this.expiresAt,
  });

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final box1Controller = TextEditingController();
  final box2Controller = TextEditingController();
  final box3Controller = TextEditingController();
  final box4Controller = TextEditingController();

  late String currentOtpCode;
  late DateTime currentExpiresAt;

  Timer? timer;
  int remainingSeconds = 0;
  bool isExpired = false;

  @override
  void initState() {
    super.initState();
    currentOtpCode = widget.otpCode;
    currentExpiresAt = widget.expiresAt;
    _updateExpiredFlag();
    startTimer();
  }

  @override
  void dispose() {
    timer?.cancel();
    box1Controller.dispose();
    box2Controller.dispose();
    box3Controller.dispose();
    box4Controller.dispose();
    super.dispose();
  }

  void _updateExpiredFlag() {
    isExpired = DateTime.now().isAfter(currentExpiresAt);
  }

  String generateTimeOtp() {
    const secret = 'MY_SECRET_KEY';
    final code = OTP.generateTOTPCodeString(
      secret,
      DateTime.now().millisecondsSinceEpoch,
      interval: 300, // 300 ثانية = 5 دقايق
      length: 4,
    );
    return code;
  }

  Future<void> resendCode() async {
    if (!isExpired) return;

    final newCode = generateTimeOtp();
    final newExpiresAt = DateTime.now().add(const Duration(minutes: 5));

    await showOtpEmailDialog(
      context,
      appName: "HUES",
      email: widget.email,
      code: newCode,
      expiresAt: newExpiresAt,
    );

    setState(() {
      currentOtpCode = newCode;
      currentExpiresAt = newExpiresAt;
      box1Controller.clear();
      box2Controller.clear();
      box3Controller.clear();
      box4Controller.clear();
      _updateExpiredFlag();
    });

    startTimer();
  }

  void onNextPressed() {
    final enteredCode = box1Controller.text +
        box2Controller.text +
        box3Controller.text +
        box4Controller.text;

    if (enteredCode.length != 4) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter the full 4-digit code')),
      );
      return;
    }

    if (isExpired) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Code expired, please resend')),
      );
      return;
    }

    if (enteredCode == currentOtpCode) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResetPassword(email: widget.email),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid verification code')),
      );
    }
  }

  void startTimer() {
    timer?.cancel();

    remainingSeconds = currentExpiresAt.difference(DateTime.now()).inSeconds;
    if (remainingSeconds < 0) remainingSeconds = 0;

    timer = Timer.periodic(const Duration(seconds: 1), (t) {
      final diff = currentExpiresAt.difference(DateTime.now()).inSeconds;

      if (!mounted) {
        t.cancel();
        return;
      }

      if (diff <= 0) {
        setState(() {
          remainingSeconds = 0;
          isExpired = true;
        });
        t.cancel();
      } else {
        setState(() {
          remainingSeconds = diff;
          isExpired = false;
        });
      }
    });
  }

  String get countdownText {
    final min = remainingSeconds ~/ 60;
    final sec = remainingSeconds % 60;
    return "${min.toString().padLeft(2, '0')}:${sec.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    final expiryTimeFormatted =
    DateFormat('hh:mm').format(currentExpiresAt);

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
          Center(
            child: Container(
              height: 510,
              width: 480,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Forget Password",
                    style: textTheme.titleLarge?.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: 350,
                    child: Text(
                      "Enter the code we sent you through your email to reset password",
                      textAlign: TextAlign.center,
                      style: textTheme.bodyMedium?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color:
                        colorScheme.onBackground.withOpacity(0.8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // نص انتهاء الصلاحية + العد التنازلي
                  Text(
                    isExpired
                        ? "Code expired. Please resend."
                        : "Expires at $expiryTimeFormatted  •  Time left: $countdownText",
                    style: textTheme.bodySmall?.copyWith(
                      fontSize: 12,
                      color: isExpired
                          ? colorScheme.error
                          : colorScheme.onBackground.withOpacity(0.7),
                    ),
                  ),

                  const SizedBox(height: 48),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      VerificationBox(controller: box1Controller),
                      const SizedBox(width: 24),
                      VerificationBox(controller: box2Controller),
                      const SizedBox(width: 24),
                      VerificationBox(controller: box3Controller),
                      const SizedBox(width: 24),
                      VerificationBox(controller: box4Controller),
                    ],
                  ),
                  const SizedBox(height: 48),

                  CustomButton(
                    text: "Next",
                    onPressed: onNextPressed,
                  ),

                  TextButton(
                    onPressed: isExpired ? resendCode : null,
                    child: Text(
                      "Resend code",
                      style: textTheme.bodyMedium?.copyWith(
                        color: isExpired
                            ? colorScheme.primary
                            : colorScheme.onSurface.withOpacity(0.4),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
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
