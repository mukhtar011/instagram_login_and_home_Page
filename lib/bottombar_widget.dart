import 'package:flutter/material.dart';

class bottombar_widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(child:
    BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      items: [
      BottomNavigationBarItem(icon: Icon(Icons.home,size: 35,),
      label: 'Home',
      ),
        BottomNavigationBarItem(icon: Icon(Icons.search,size: 35,),
          label: 'Heart',

        ),
      BottomNavigationBarItem(icon: Image.asset('assets/images/reel.png',width: 30,),
        label: 'Reels',
      ),
    BottomNavigationBarItem(icon: Image.asset('assets/images/img.png', width: 30,),
    label: 'Add',
    ),
    BottomNavigationBarItem(icon: CircleAvatar(
      backgroundImage: AssetImage('assets/images/user.jpg'),
    ),
    label: 'User',
    ),
     ] ),

    );

  }

}