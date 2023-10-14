import 'package:flutter/material.dart';
import 'package:learning/Screens/courses_Screen.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
 // const HomePage({super.key});
  
  List catNames= [
    
    
 
     "BookStore",
     "Paid Course",
     "LoaderBoard"
     ];
     List<Color> CatColors=[
   
      Color.fromARGB(255, 228, 72, 228),
      Color.fromARGB(255, 224, 121, 114),
      Color.fromARGB(255, 84, 230, 89),
     ];
     List<Icon> CatIcons=[
      Icon(Icons.book,),
      Icon(Icons.wine_bar_rounded,),
      Icon(Icons.leaderboard,)

     ];

     
     
     List imgList  =[
      'flutter',
      'react',
      'python',
      'java',
     ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      drawer: Drawer(child: Column(children: [
        Text("login"),
      ],),),
        
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15,right: 15,bottom: 10),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 108, 59, 192),

              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
              ),
                ),    
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       
                        Icon(
                          Icons.notifications,
                          size: 30,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding:EdgeInsets.only(left: 3,bottom: 15),
                      child: Text(
                        "Hi , Programmer",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          wordSpacing: 2,
                          color: Colors.white,

                        ),
                      ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5,bottom: 20),
                        width: MediaQuery.of(context).size.width,
                        height: 55,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here...",
                            hintStyle: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                            ),
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              size: 25,
                            ),
                          ),
                        ),
                      ),
                  ]),
             ),
             Padding(
              padding:EdgeInsets.only(top: 20,left: 15,right: 15),
              child: Column(children: [
                GridView.builder(
                  itemCount: catNames.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1
                    ),
                 itemBuilder: (context, index){
                      return Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: CatColors[index],
                              shape: BoxShape.circle,
                            ),
                            
                            ),
                        
                          SizedBox(height: 10),
                          Text(
                            catNames[index],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                        ],
                      );
                    
                 },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text(
                      "Courses",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                       Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 87, 31, 184)
                      ),
                    ),
                  ],),
                  SizedBox(height: 10),
                  GridView.builder(
                    itemCount: imgList.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: (MediaQuery.of(context).size.height - 50 - 25)/(4*240),
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context,
                            MaterialPageRoute(
                              builder: (context) =>  CoursesScreen(imgList[index], index),
                            )
                            );
                          },
                          child: Container(
                            padding: 
                            EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromARGB(255, 241, 231, 231)                   
                               ),
                           child: Column(
                            children: [
                              Padding(
                                padding:EdgeInsets.all(10),
                                child: Image.asset("images/${imgList[index]}.png",
                                height: 80,
                                width: 80,
                                ),
                                 ),
                                 SizedBox(height: 10,),
                                 Text(
                                  imgList[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black.withOpacity(0.6),
                                  ),
                                 ),
                                 SizedBox(height: 10,),
                                 Text("SS Videos",style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.5),
                                 ),
                                 ),
                            ],
                           ),
                          ),
                        );
                      },
                  ),
                      

              ],
              ),
               ),
          
        ],
      
      ),
    
    );
  }
}