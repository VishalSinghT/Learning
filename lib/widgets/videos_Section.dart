import 'package:flutter/material.dart';

// ignore: unused_import
import 'Youtube.dart';


// ignore: must_be_immutable
class VideoSection extends StatefulWidget {
   

  VideoSection();
  @override
  State<VideoSection> createState() => _VideoSectionState();
}

class _VideoSectionState extends State<VideoSection> {
  bool isYoutube =true;

   List VideoList = [
    "Introduction ",
    "Installing  on windows",
    "setup Emulator on Window",
    "crrating our first App",
    "first app with code",
    "Day 2 Module",
    "Day 3 Module",
    "Day 4 Module"
   ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: VideoList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
       return ListTile(
          leading: Container( 
            
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index ==0 
              ? Color.fromARGB(255, 102, 47, 204):
               Color.fromARGB(255, 102, 47, 204).withOpacity(0.6),
               shape: BoxShape.circle,
              
            ),
             
            child: Icon(Icons.play_arrow_rounded,
            color: Colors.white,
            size: 30,),
          ),
          title: Text(VideoList[index]),
          subtitle: Text("20 min 25 saec"),
          
             
            
        );
      },
    );
  }
}