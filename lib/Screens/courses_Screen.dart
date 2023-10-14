import 'package:flutter/material.dart';
import 'package:learning/widgets/youtube.dart';
import '../widgets/descriptions_method.dart';
import '../widgets/videos_Section.dart';


// ignore: must_be_immutable
class CoursesScreen extends StatefulWidget {
 String img;
 int index;
 CoursesScreen(this.img,this.index);
  
  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  bool isVideosSection = true; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(widget.img,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
        ),
        actions: [
          Padding(padding: 
          EdgeInsets.only(right: 10),
          child: Icon(Icons.notifications,size: 28,
          color:  Color.fromARGB(255, 108, 59, 192),
          ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 231, 226, 226),
                image: DecorationImage(
                  image: AssetImage("images/${widget.img}.png"),
                ),
              ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  
                  child: InkWell(
                    onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> YoutubePlayerrExample(cno:widget.index)));
                    },
                    
                    child: Icon(Icons.play_arrow_rounded,
                        
                    color: Color.fromARGB(255, 94, 61, 185),
                    size: 35,),
                  ),

                ),
              ),
            ),
            SizedBox(height: 25),
            Text("${widget.img} complete Course",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),),
            
            
            SizedBox(height: 5),
            Text("55 Videos",
             style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.black.withOpacity(0.5),
             ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(

                    color:isVideosSection ? 
                    Color.fromARGB(255, 102, 47, 204):
                     Color.fromARGB(255, 102, 47, 204).withOpacity(0.6),

                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isVideosSection= true;
                      
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                        child: Text("Videos",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: isVideosSection ? Color.fromARGB(255, 102, 47, 204).withOpacity(0.6):
                    Color.fromARGB(255, 102, 47, 204),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        setState((){
                            isVideosSection=false;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                        child: Text("Description",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10,),
            isVideosSection ? VideoSection(): DescriptionSection(),

          ],
        ),
      ),
    );
  }
}