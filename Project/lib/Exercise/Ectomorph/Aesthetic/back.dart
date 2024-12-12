import 'package:flutter/material.dart';

import '../../../Utils/routes.dart';
class Back extends StatelessWidget{

@override
Widget build(BuildContext context) {
  return Material(
  child: Scaffold(
    backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Back"),
          backgroundColor: Colors.black,
         ),  
         body:  ListView(
      padding: EdgeInsets.zero,
      children: [
        
        const SizedBox(height: 2.0, 
          child: const DecoratedBox(
          decoration: const BoxDecoration(
          color: Colors.black
              ),
            ),
         ),
        
        
        
        ElevatedButton(
          style: TextButton.styleFrom(backgroundColor: Colors.white),
          child: const ListTile(
          
            title: Text('Pull Up', textScaleFactor: 1.2,style: TextStyle(color: Colors. black)),
             ),
              onPressed: (){
              
               Navigator.pushNamed(context, MyRoutes.pullUp);
              }
        ),
        
        const SizedBox(height: 2.0, 
          child: const DecoratedBox(
          decoration: const BoxDecoration(
          color: Colors.black
              ),
            ),
         ),
        
        ElevatedButton(
          style: TextButton.styleFrom(backgroundColor: Colors.white),
          child: const ListTile(
          
            title: Text('Deaadlift', textScaleFactor: 1.2, style: TextStyle(color: Colors. black)),
             ),
              onPressed: (){
                
               Navigator.pushNamed(context, MyRoutes.deadlift3);
              
              }
        ),
        
        const SizedBox(height: 2.0, 
          child: const DecoratedBox(
          decoration: const BoxDecoration(
          color: Colors.black
              ),
            ),
         ),
        
        ElevatedButton(
          style: TextButton.styleFrom(backgroundColor: Colors.white),
          child: const ListTile(
          
            title: Text('Lat Pull Down', textScaleFactor: 1.2, style: TextStyle(color: Colors. black),),
             ),
              onPressed: (){
              
               Navigator.pushNamed(context, MyRoutes.latPullDown3);
              }
        ),
        
        const SizedBox(height: 2.0, 
          child: const DecoratedBox(
          decoration: const BoxDecoration(
          color: Colors.black
              ),
            ),
         ),
        
        ElevatedButton(
          style: TextButton.styleFrom(backgroundColor: Colors.white),
          child: const ListTile(
          
            title: Text('Bent Over Barbell Rows', textScaleFactor: 1.2,  style: TextStyle(color: Colors. black),),
             ),
              onPressed: (){
              
               Navigator.pushNamed(context, MyRoutes.bentOverBarbellRows3);
              }
        ),
        
        const SizedBox(height: 2.0, 
          child: const DecoratedBox(
          decoration: const BoxDecoration(
          color: Colors.black
              ),
            ),
         ),
        
       

       

          
          
          
     
      ]



    ),     
  )
);
}
}
