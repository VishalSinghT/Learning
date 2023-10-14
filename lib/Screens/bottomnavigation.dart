import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:learning/Screens/fluttervideo.dart';
import 'package:learning/Screens/home_Scrren.dart';
import 'package:learning/Screens/signIn_Screen.dart';
// ignore: unused_import
import 'package:learning/Screens/splashScreen.dart';


import '../widgets/loginpage.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
    final items = [
 Icon(Icons.home,
 color: Colors.white,),
   Icon(Icons.assignment,
 color: Colors.white,),
   Icon(Icons.favorite,
 color: Colors.white,),
   Icon(Icons.person,
 color: Colors.white,),
    ];
  int index=0;
       
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(items: items,
      index : index,
      onTap: (selecteIndex){
        setState(() {
          index = selecteIndex;
        });


      },
      height: 60,
backgroundColor: Colors.transparent,
color: Color.fromARGB(255, 87, 31, 184)
      ),
      body: NavigatorWidget(index: index),
    );
  }
Widget NavigatorWidget({required  int index})
{
  Widget widget;
  switch(index){
    case 0:
    widget =HomePage();
    break;
    case 1:
    widget = LoginScreen();
    break;
    case 3:
    widget =VideoScreen();
    break;
    default: 
    widget =SignScreen();
  }
  return widget;
}
}