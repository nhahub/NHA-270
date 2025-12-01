import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../Components/custom_button.dart';
import '../home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // مدة ظهور الـ Splash
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
    });
  }



  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
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

      ],
    );
  }
}

