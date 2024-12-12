import 'package:flutter/material.dart';

import '../../../Utils/routes.dart';
class LegsEctoAes extends StatelessWidget{

@override
Widget build(BuildContext context) {
  return Material(
  child: Scaffold(
    backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Legs"),
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
          
            title: Text('Squat', textScaleFactor: 1.2,style: TextStyle(color: Colors. black)),
             ),
              onPressed: (){
              
               Navigator.pushNamed(context, MyRoutes.squat3);
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
          
            title: Text('Dumbbell Lunges', textScaleFactor: 1.2, style: TextStyle(color: Colors. black)),
             ),
              onPressed: (){
                
               Navigator.pushNamed(context, MyRoutes.dumbbelllunges2);
              
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
          
            title: Text('Leg Extension', textScaleFactor: 1.2, style: TextStyle(color: Colors. black),),
             ),
              onPressed: (){
              
               Navigator.pushNamed(context, MyRoutes.legExtension3);
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
