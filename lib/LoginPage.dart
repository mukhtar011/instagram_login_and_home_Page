import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instargram_app/home_screen.dart';
import 'package:instargram_app/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatelessWidget{
  var uUserController = TextEditingController();
  var uPassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        color: Colors.white,
        child: Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text('Instagram', style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Satisfy-Regular',fontSize: 50,color: Colors.black),
              ),
                ),

                    TextField(
                    controller: uUserController,
                    decoration: InputDecoration(
                      labelText: 'Phone number,Username or Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),

                      )
                    ),

                  ),
                  SizedBox(height: 16,),
                  TextField(
                    controller: uPassController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      )
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 16,),
                  ElevatedButton(
                    onPressed: ()async{
                    var user =  uUserController.text.toString();
                    var pass = uPassController.text.toString();
                    var sharedpref = await SharedPreferences.getInstance();
                    sharedpref.setBool(SplashScreenState.KEYLOGIN,true);
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => home_screen()),);
                    print('LogIn Button Pressed');
                  },
                    child: Text('LogIn'),

                  )
              ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}