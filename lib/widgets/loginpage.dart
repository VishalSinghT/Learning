
import 'package:flutter/material.dart';

import 'fav.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  
  get index => null;
  
  

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text('Paid Course'),
      backgroundColor:  Color.fromARGB(255, 87, 31, 184),
     ),
     
     body:Center(
      
      
       child: SingleChildScrollView(
         child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children:[ Container(
            height: 200,
            width: 300,
           
           padding: EdgeInsets.only(left: 15,right: 15,top: 10),
           
          
                decoration: BoxDecoration(
                  color: Colors.white,
                    image: DecorationImage(image: NetworkImage("https://st3.depositphotos.com/2924751/16089/i/450/depositphotos_160897772-stock-photo-face-detection-and-recognition-of.jpg")),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                 
                  ),
                    ),    
                  
          
         ),
          Padding(
            padding: const EdgeInsets.all(3),
            child: Row(
              children: [
                ElevatedButton( child:Text("Buy",style: TextStyle(fontWeight: FontWeight.bold,
                       
                ),),onPressed: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder:(context)=> FavScreenState()));
                 
                  
                },),
                SizedBox(width: 50,),
                 
                  
                   TextButton( child:Text("Data Science",style: TextStyle(fontWeight: FontWeight.w600,
                         
                                 ),),onPressed: () {
                    
                    
                                 },),
                 
              ],
            ),
          ),
          
        
         Container(
            height: 200,
            width: 300,
           
           padding: EdgeInsets.only(left: 15,right: 15,top: 10),
           
          
                decoration: BoxDecoration(
                  color: Colors.white,
                    image: DecorationImage(image: NetworkImage("https://bernardmarr.com/img/What%20Is%20The%20Importance%20Of%20Artificial%20Intelligence%20(AI).png")),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                 
                  ),
                    ),    
                  
          
         ),
          Padding(
            padding: const EdgeInsets.all(3),
            child: Row(
              children: [
                ElevatedButton(   child:Text("Buy",style: TextStyle(fontWeight: FontWeight.bold,
                       
                ),),onPressed: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder:(context)=> FavScreenState()));
                 
                  
                },),
                SizedBox(width: 50,),
                 
                  
                   TextButton( child:Text("Machine learning",style: TextStyle(fontWeight: FontWeight.w600,
                         
                                 ),),onPressed: () {
                    
                    
                                 },),
                 
              ],
            ),
          ),
         SizedBox(height: 5,),
         Container(
            height: 200,
            width: 300,
           
           padding: EdgeInsets.only(left: 15,right: 15,top: 10),
                decoration: BoxDecoration(
                   image: DecorationImage(image: NetworkImage("https://www.nibib.nih.gov/sites/default/files/inline-images/AI%20600%20x%20400.jpg")),
                  color: Colors.white,
            
                  borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                    ),    
         ),
          
         
          ]
         ),
       ),
     ),
    );
         
          
  }
}