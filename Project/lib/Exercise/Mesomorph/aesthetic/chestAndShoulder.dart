import 'package:flutter/material.dart';

import '../../../Utils/routes.dart';
class chestAndShoulder extends StatelessWidget{

@override
Widget build(BuildContext context) {
  return Material(
  child: Scaffold(
    backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Chest And Shoulder"),
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
          
            title: Text('Bench Press', textScaleFactor: 1.2, style: TextStyle(color: Colors. black),),
             ),
              onPressed: (){
               Navigator.pushNamed(context, MyRoutes.benchpress2);
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
          
            title: Text('Butter Fly', textScaleFactor: 1.2,style: TextStyle(color: Colors. black)),
             ),
              onPressed: (){
              
               Navigator.pushNamed(context, MyRoutes.butterFly2);
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
          
            title: Text('Seated Overhead Press', textScaleFactor: 1.2, style: TextStyle(color: Colors. black)),
             ),
              onPressed: (){
                
               Navigator.pushNamed(context, MyRoutes.seatedOverheadPress);
              
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
          
            title: Text('Cable Chest Fly', textScaleFactor: 1.2, style: TextStyle(color: Colors. black),),
             ),
              onPressed: (){
              
               Navigator.pushNamed(context, MyRoutes.cableChestFly2);
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
          
            title: Text('Face Pull', textScaleFactor: 1.2,  style: TextStyle(color: Colors. black),),
             ),
              onPressed: (){
              
               Navigator.pushNamed(context, MyRoutes.facePull);
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
          
            title: Text('Cable Front Raises', textScaleFactor: 1.2, style: TextStyle(color: Colors. black),),
             ),
              onPressed: (){
              
               Navigator.pushNamed(context, MyRoutes.cableFrontRaises);
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