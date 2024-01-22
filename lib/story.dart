import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class story extends StatelessWidget{

  List stories = [
    'assets/images/user.jpg',
    'assets/images/Attitude.jpg',
    'assets/images/Attitude.jpg',
    'assets/images/Attitude.jpg',
    'assets/images/Attitude.jpg',
    'assets/images/Attitude.jpg',
    'assets/images/Attitude.jpg',
    'assets/images/Attitude.jpg',
    'assets/images/Attitude.jpg',
    'assets/images/Attitude.jpg',

  ];

  story({super.key});
  @override
  Widget build(BuildContext context) {
    return  Column(

      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:List.generate(10, (index){
              return Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  height: 67,
                  width: 67,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFFEEA863),Color(0xFF9B2282)])
                  ),

                  child: Container(
                    height: 65,
                    width: 65,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [BoxShadow(
                                color: Colors.grey,spreadRadius: 1)],
                            image: DecorationImage(image: AssetImage('${stories[index]}'))
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),),
          ),
        )

    ]);

  }

}