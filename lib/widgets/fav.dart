import 'dart:ui';

import 'package:flutter/material.dart';
class FavScreenState extends StatelessWidget {
  const FavScreenState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
                child: Container(
                  height: 400,
                  width: 300,
                  
                    decoration: BoxDecoration(
                 
                    image: DecorationImage(image: NetworkImage("https://img.freepik.com/free-vector/remote-management-distant-work-isometric-icons-composition-with-man-computer-table-with-avatars-distant-workers_1284-63071.jpg?size=626&ext=jpg")),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20), 
                    
                  ),
                    ),    
                   
                ),
               
              
              ),
            ),
             Container(child: Image.network("https://img.freepik.com/premium-vector/coming-soon-banner-corner-peeled-flip-paper-fold-vector-illustration_185038-742.jpg?size=626&ext=jpg&ga=GA1.2.1169763580.1694423597&semt=ais"),)
             
          ],
        ),
      ),
    );
  }
}
