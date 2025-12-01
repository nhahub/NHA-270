import 'dart:math';
import 'package:flutter/material.dart';

import '../Components/custom_button.dart';
import '../Components/text_field.dart';


class ResetPassword extends StatelessWidget {
  const  ResetPassword({super.key});

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
              angle: -120* pi / 180,
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
            top: 213,
            left: 45,

            child: const Text(
              "Reset Password",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),),

          Positioned(
              top: 274,
              left:19,
              right: 19,
              child: Column(
                  children: [

                    CustomTextField(label: "Password",obscureText: true, controller: TextEditingController(),),
                    const SizedBox(height: 20),
                    CustomTextField(label: "Confirm Password",obscureText: true, controller: TextEditingController()),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                      ],
                    ),
                    SizedBox(height: 120,),
                    CustomButton(text: "Next", onPressed: (){}),
                    SizedBox(height: 250),

                  ]


              ))



        ],
      ),
    );
  }
}
