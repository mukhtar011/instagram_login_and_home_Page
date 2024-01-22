import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instargram_app/bottombar_widget.dart';
import 'package:instargram_app/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => SplashScreenState();
}
class SplashScreenState extends State<SplashScreen>{
  static const String KEYLOGIN = 'LogIn';
 @override
 void initState(){
   super.initState();
   whereToGo();
 }
 void whereToGo() async{

   var sharedpref = await SharedPreferences.getInstance();
   var isLoggedIn = sharedpref.getBool(SplashScreenState.KEYLOGIN);



   Timer(
     Duration(seconds: 3),(){
       if(isLoggedIn!= null){
         if (isLoggedIn) {
           Navigator.pushReplacement(context,
               MaterialPageRoute(builder: (context) => home_screen()),);
         }else {
           Navigator.pushReplacement(context,
               MaterialPageRoute(builder: (context) => LoginPage()),);

         }
       } else {
         Navigator.pushReplacement(context,
             MaterialPageRoute(builder: (context) => LoginPage()),);
       }
   }
   );
 }
 @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
          child: Hero(
            tag: 'logo',
            child: Image.asset('assets/images/instagramlogo.png',width: 100,height: 100,),
          )
      ),
    );
 }
}




