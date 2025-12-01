import 'dart:math';
import 'package:depi_project/Screens/signUp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Components/custom_button.dart';
import '../Components/text_field.dart';
import 'forget_password.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

   Future<void> _onLoginSuccess(String userEmail,BuildContext context) async {
     final prefs = await SharedPreferences.getInstance();
     await prefs.setBool('isLoggedIn', true);
     await prefs.setString('userEmail', userEmail); // ده هنحتاجه بعدين للفيفوريتس
     Navigator.pushReplacementNamed(context, "Home");
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Image.asset("assets/images/Placeholder Square.png",fit: BoxFit.cover,)),
          Transform.rotate(
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
          Positioned(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Log in                                         ",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,

                  ),
                ), //log in
                SizedBox(height: 16,),
                CustomTextField(label: "Email",controller: email,),
                const SizedBox(height: 24),
                CustomTextField(label: "Password",obscureText: true, controller: password,),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPassword()));
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.only(right: 45), // عشان يقلل المسافة حوالين النص
                        minimumSize: Size(0, 0),  // optional
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap, // optional لتقليل المساحة
                      ),
                      child: const Text(
                        "Forget Password?",
                        style: TextStyle(
                          color: Color(0xFF7F167F),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24,),
                CustomButton(text: "Next", onPressed: (){}),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Don’t have an account?",style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),),

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
              ]
              ,
            ),
          ),





        ],
      ),
    );
  }
}
