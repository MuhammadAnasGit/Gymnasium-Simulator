import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gymnasium_simulator/Widget/myDrawer.dart';
import 'package:gymnasium_simulator/utils/routes.dart';


class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Gymnasium Simulator"),
        backgroundColor: Colors.black,
      ),
      body: Container(
            
            child:  Padding(
              padding: const EdgeInsets.symmetric(vertical:5,horizontal: 0 ),
              child: GridView.count(  
                    
                 crossAxisCount:2, 
                 crossAxisSpacing: 4.0,
                 mainAxisSpacing: 4.0,
                childAspectRatio:1.0,   
                 children:  [
                          ElevatedButton(
                            style: TextButton.styleFrom(backgroundColor: Colors.black,),
                           
                              child: GridTile(
                              header: SizedBox(
                                height: 120,
                                child: Icon(
                                   CupertinoIcons.flame,
                                   color: Colors.white,
                                 ),
                              
                               ),

                               child: Padding(
                                 padding: const EdgeInsets.symmetric(vertical:80,horizontal: 10),
                                 child: Text(
                                      "Calories Calculator",
                                      style: TextStyle(color: Colors. white),
                                      ),
                               ),
                              ),
                            
                          onPressed: ()
                            {
                            Navigator.pushNamed(context, MyRoutes.gender);
                            },  
                          ),
                          ElevatedButton(
                            style: TextButton.styleFrom(backgroundColor: Colors.black,),
                           
                              child: GridTile(
                              header: SizedBox(
                                height: 120,
                                child: Icon(
                                   CupertinoIcons.photo_on_rectangle,
                                   color: Colors.white,
                                 ),
                              
                               ),

                               child: Padding(
                                 padding: const EdgeInsets.symmetric(vertical:80,horizontal: 30),
                                 child: Text(
                                      "Get Exercises",
                                      style: TextStyle(color: Colors. white),
                                      ),
                               ),
                              ),
                            
                          onPressed: ()
                            {
                            Navigator.pushNamed(context, MyRoutes.bodyType);
                            },  
                          ),
                          ElevatedButton(
                            style: TextButton.styleFrom(backgroundColor: Colors.black),
                           
                              child: GridTile(
                              header: SizedBox(
                                height: 120,
                                child: Icon(
                                   CupertinoIcons.chart_pie,
                                   color: Colors.white,
                                 ),
                              
                               ),

                               child: Padding(
                                 padding: const EdgeInsets.symmetric(vertical:80,horizontal: 10),
                                 child: Text(
                                      "Nutrition Calculator",
                                      style: TextStyle(color: Colors. white),
                                 ),
                               ),
                              ),
                            
                          onPressed: ()
                            {
                            Navigator.pushNamed(context, MyRoutes.macros);
                            },  
                          ),
                          ElevatedButton(
                            style: TextButton.styleFrom(backgroundColor: Colors.black,),
                           
                              child: GridTile(
                              header: SizedBox(
                                height: 120,
                                child: Icon(
                                   CupertinoIcons.waveform_path_ecg,
                                   color: Colors.white,
                                 ),
                              
                               ),

                               child: Padding(
                                 padding: const EdgeInsets.symmetric(vertical:80,horizontal: 20),
                                 child: Text(
                                      "Calories Burned",
                                      style: TextStyle(color: Colors. white),
                                 ),
                               ),
                              ),
                            
                          onPressed: ()
                            {
                            Navigator.pushNamed(context, MyRoutes.typeOfExercise);
                            },  
                          ),
                         
                          
                         
                         


                        ],

                        
                        ),
            ),
            
          ),



               
             
            
              
    
        
      
     
      drawer: MyDrawer(),
    );
  }
}

