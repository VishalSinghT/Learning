import 'package:flutter/material.dart';
class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About Us"),
      backgroundColor: Color.fromARGB(255, 87, 31, 184)),
      body: Center(
         child: SingleChildScrollView(
           child: Column(
            
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:[ Container(
            height: 500,
            width: 300,
            child:  Text("",style: TextStyle(fontSize: 30,),),
           padding: EdgeInsets.only(left: 15,right: 15,top: 10),
           
                 
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 225, 214, 226),
                    image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1564410267841-915d8e4d71ea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGxlYXJuaW5nJTIwYW5kJTIwZGV2ZWxvcG1lbnR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60")),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
               
                  ),
                    ),    
                   
                 
                ),
                SizedBox(height: 5,),
                Container(
            height: 100,
            width: 300,
            child:  Text("Greater demand and rising quality standards also suggest that students are growing savvier about the returns of their educational investments. For some prospective students, especially those moving into high-paying fields such as IT, the opportunity to learn high-demand skills is more important than a program or institution’s brand",style: TextStyle(fontSize: 10,),),
           padding: EdgeInsets.only(left: 15,right: 15,top: 10),
           
                 
                decoration: BoxDecoration(
                  color: Colors.white,
                   
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
               
                  ),
                    ),    
                   
                 
                ),
                 ]
               ),
         )
      )

    );
  }
}