import 'package:flutter/material.dart';
import 'package:instargram_app/bottombar_widget.dart';
import 'package:instargram_app/main.dart';
import 'package:instargram_app/story.dart';
class home_screen extends StatefulWidget{
  @override
  State<home_screen> createState() => home_screenstate();

  }

  class home_screenstate extends State<home_screen>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.white,
       title: Text('Instagram', style: TextStyle(
         decoration: TextDecoration.none,
           fontFamily: 'Satisfy-Regular',fontSize: 30,color: Colors.black),
       ),
       actions: [
         IconButton(icon: Icon(Icons.favorite_border_rounded,
           size: 30, color: Colors.black,
         ), onPressed: (){},),
         IconButton(
             icon: Image.asset('assets/images/messenger.png'),
           onPressed: (){})
       ],),
body: story(),
bottomNavigationBar: bottombar_widget(),


     );
  }

  }

