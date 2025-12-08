import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class PopUpLogout extends StatelessWidget {
  const PopUpLogout({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        actions:[
          Row(
              children: [
                Expanded(child: ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xFF7F167F)),
                  ),
                  child: Text("Cancel",style: TextStyle(color: Colors.white),),

                )),
                SizedBox(width: 10,),
                Expanded(child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    logout(context);
                    Navigator.pushReplacementNamed(context, "First Splash");
                  },

                  child: Text("Yes",style: TextStyle(color: Color(0xFF7F167F)),),
                )),
              ]
          )
        ],
        title: Center(child: Text("Log out",style: TextStyle(color: Color(0xFF7F167F),fontSize: 18,fontWeight: FontWeight.bold),)),
        content: Text("Are you sure you want to log out?"));


  }
}
Future<void> logout(BuildContext context) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('isLoggedIn', false);

}