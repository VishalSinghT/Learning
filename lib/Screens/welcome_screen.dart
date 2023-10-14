import 'package:flutter/material.dart';
import 'package:learning/Screens/bottomnavigation.dart';

// ignore: unused_import
import 'home_Scrren.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(children: [
            
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/1.6,
                decoration: BoxDecoration(
                  color:  Color.fromARGB(255, 7, 7, 7) ,
                  borderRadius:
                   BorderRadius.only(bottomRight: Radius.circular(70)),
                ),
                  child:Center(child: Image.asset( "images/home.png"  ),
                  ),
              ),
             
            ],),
            
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.66,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 3, 3, 3),
                ),
              ),
            ),
            
             Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.66,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                  )
                ),
              
                child: Column(children: [
                  SizedBox(height: 20,),
                  Text("CODESHASTRA",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w200,
                   // letterSpacing: 
                    wordSpacing: 2,
                  ),
                  ),
                SizedBox(height: 15),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 40),
                  child: Text("Coding Club ",
                  
                                  
                    textAlign: TextAlign.center,
                   style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.black.withOpacity(0.6),
                   ),
                  ),
                ),
                SizedBox(height: 60),
                Material(
                  color:Color.fromARGB(255, 12, 11, 14),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context)=> BottomNavigation(),
                        ),
                        );
                       },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 15,horizontal: 80 ),
                      child: Text(
                        "Get Start",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                  ),
                  ),
                ), 
                
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}