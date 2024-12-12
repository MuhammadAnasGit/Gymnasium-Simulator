import 'package:flutter/material.dart';

import '../../../Utils/routes.dart';
class Push extends StatelessWidget{

@override
Widget build(BuildContext context) {
  return Material(
  child: Scaffold(
    backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Push"),
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
          
            title: Text('Bench Press', textScaleFactor: 1.2, style: TextStyle(color: Colors. black)),
             ),
              onPressed: (){
                
               Navigator.pushNamed(context, MyRoutes.benchPress4);
              
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
          
            title: Text('Inclined Bench Press', textScaleFactor: 1.2, style: TextStyle(color: Colors. black),),
             ),
              onPressed: (){
              
               Navigator.pushNamed(context, MyRoutes.inclinBenchPress4);
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
          
            title: Text('Seated Overhead Press', textScaleFactor: 1.2,style: TextStyle(color: Colors. black)),
             ),
              onPressed: (){
              
               Navigator.pushNamed(context, MyRoutes.seatedOverheadPress4);
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
          
            title: Text('Chest Dips', textScaleFactor: 1.2,style: TextStyle(color: Colors. black)),
             ),
              onPressed: (){
              
               Navigator.pushNamed(context, MyRoutes.chestDips);
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
          
            title: Text('Cable Chest Fly', textScaleFactor: 1.2,style: TextStyle(color: Colors. black)),
             ),
              onPressed: (){
              
               Navigator.pushNamed(context, MyRoutes.cableChestFly);
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

     