import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:learning/Screens/home_Scrren.dart';

import 'Screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        'home': (context)=>WelcomeScreen(),
      },
      initialRoute: 'home',
      
      
    );
  }
}

