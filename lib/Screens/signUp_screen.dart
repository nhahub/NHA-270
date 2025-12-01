import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Components/custom_button.dart';
import '../Components/text_field.dart';
import 'login_screen.dart';



class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Placeholder Square.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),


          Positioned(
            left:-60,

            top: 145.15,
            child: Transform.rotate(
              angle: 120* pi / 180,
              child: Container(
                height: 510,
                width: 490,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  color: Colors.white,
                ),

              ),

            ),
          ),
          Positioned(
            top: 165,
            left: 75,
            right: 245,
            child: const Text(
              "Sign up",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),),

          Positioned(
              top: 245,
              left:19,
              right: 19,
              child: Column(
                  children: [

                    CustomTextField(label: "Full Name", controller: TextEditingController()),
                    const SizedBox(height: 21),
                    CustomTextField(label: "Email", controller: TextEditingController()),
                    const SizedBox(height: 21),
                    CustomTextField(label: "Password",obscureText: true, controller: TextEditingController()),
                    const SizedBox(height: 21),
                    CustomTextField(label: "Confirm Password",obscureText: true, controller: TextEditingController()),

                    SizedBox(height: 42,),
                    CustomButton(text: "Next", onPressed: (){}),
                    SizedBox(height: 250),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Already have an account?",style: TextStyle(
                          color: Color(0xFFFACCEA),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),),

                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                          },

                          child: const Text(
                            "Log in",
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]


              ))



        ],
      ),
    );
  }
}
