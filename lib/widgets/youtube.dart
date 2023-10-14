import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerrExample extends StatefulWidget {
  final int cno;
   YoutubePlayerrExample({required this.cno});

  @override
  State<YoutubePlayerrExample> createState() => _YoutubePlayerrExampleState();
}

class _YoutubePlayerrExampleState extends State<YoutubePlayerrExample>{
  final videoURL = "https://www.youtube.com/watch?v=jqxz7QvdWk8&list=PLjVLYmrlmjGfGLShoW0vVX_tcyT8u1Y3E";

  final videoURL1 = "https://www.youtube.com/watch?v=CI2kX2EFhWc";

  final videoURL2 = "https://www.youtube.com/watch?v=vLqTf2b6GZw";

  final videoURL3 = "https://www.youtube.com/watch?v=aQatrXw0njs&t=91s";

   final videoURL4= "https://www.javatpoint.com/java-tutorial";
  late YoutubePlayerController _controller;
  
  void initState(){
    if(widget.cno==0){


final videoId = YoutubePlayer.convertUrlToId(videoURL);
_controller = YoutubePlayerController(
      initialVideoId: videoId!,
       flags: const YoutubePlayerFlags(
        autoPlay: false,
       )
        );


    }else if(widget.cno==1)
    {
      
final videoId = YoutubePlayer.convertUrlToId(videoURL1);
_controller = YoutubePlayerController(
      initialVideoId: videoId!,
       flags: const YoutubePlayerFlags(
        autoPlay: false,
       )
        );
    }else if(widget.cno==2)
    {
      
final videoId = YoutubePlayer.convertUrlToId(videoURL2);
_controller = YoutubePlayerController(
      initialVideoId: videoId!,
       flags: const YoutubePlayerFlags(
        autoPlay: false,
       )
        );
    }
    else if(widget.cno==3)
    {
      
final videoId = YoutubePlayer.convertUrlToId(videoURL3);
_controller = YoutubePlayerController(
      initialVideoId: videoId!,
       flags: const YoutubePlayerFlags(
        autoPlay: false,
       )
        );
    }
    else if(widget.cno==4)
    {
      
final videoId = YoutubePlayer.convertUrlToId(videoURL4);
_controller = YoutubePlayerController(
      initialVideoId: videoId!,
       flags: const YoutubePlayerFlags(
        autoPlay: false,
       )
        );
    }


    
   

    super.initState();
      }
      Widget build(BuildContext context){
        return Scaffold(
          appBar: AppBar(title: const Text('Videos')),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                onReady: () => debugPrint('Ready'),
                ),
            ],
          ),
        );
      }
}
    