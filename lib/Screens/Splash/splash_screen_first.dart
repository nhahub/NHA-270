import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../Components/custom_button.dart';
import '../login_screen.dart';
import '../signUp_screen.dart';

class SplashScreenFirst extends StatefulWidget {
  const SplashScreenFirst({super.key});

  @override
  State<SplashScreenFirst> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreenFirst> {
  bool showButtons = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      if (!mounted) return;
      setState(() => showButtons = true);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.asset("assets/images/Placeholder Square.png",fit: BoxFit.cover,)
        ),
        Positioned(
          right: -50,
          top: 100,
          child: Hero(
            tag: "logo",
            child: Lottie.asset("assets/lotties/Logo animation.json",
              width: 550,
              height: 550,
              fit: BoxFit.cover,
              repeat: false,
            ),
          ),
        ),
        Positioned(
          bottom: 250,
          left: 0,
          right: 0,
          child: AnimatedOpacity(
            opacity: showButtons ? 1 : 0,
            duration: const Duration(milliseconds: 300),
            child: Column(
              children: [
                CustomButton(
                  text: "Log in",
                  onPressed: () {
                    Navigator.pushReplacementNamed(context,"Log in"
                   );
                  },
                  opacity: 0.32,
                ),
                const SizedBox(height: 24),
                CustomButton(
                  text: "Sign up",
                  onPressed: () {
                    Navigator.pushReplacementNamed(context,"Sign up"

                    );
                  },

                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

