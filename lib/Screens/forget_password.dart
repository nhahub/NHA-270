import 'package:depi_project/Screens/reset_password.dart';
import 'package:flutter/material.dart';

import '../Components/custom_button.dart';
import '../Components/verification_box.dart';



class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final box1Controller = TextEditingController();
  final box2Controller = TextEditingController();
  final box3Controller = TextEditingController();
  final box4Controller = TextEditingController();

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
            left: -40,
            right: -40,
            top: 145.15,
            child: Container(
              height: 510,
              width: 490,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 69),
                child: Column(
                  children: [
                    const Text(
                      "Forget Password",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 16),
                    const SizedBox(
                      width: 346,
                      child: Text(
                        "Enter the code we sent you through your email to reset password",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xCC0E2954),
                        ),
                      ),
                    ),
                    const SizedBox(height: 41),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        VerificationBox(controller: box1Controller),
                        SizedBox(width: 22,),
                        VerificationBox(controller: box2Controller),
                        SizedBox(width: 22,),
                        VerificationBox(controller: box3Controller),
                        SizedBox(width: 22,),
                        VerificationBox(controller: box4Controller),
                      ],
                    ),

                    SizedBox(height: 112,),
                    CustomButton(text: "Next", onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPassword()));
                    }),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



