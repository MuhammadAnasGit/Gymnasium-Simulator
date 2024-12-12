import 'package:flutter/material.dart';
import '../../../Utils/routes.dart';

class LowerBodyEndo2 extends StatelessWidget{

@override
Widget build(BuildContext context) {
  return Material(
  child: Scaffold(
    backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Lower Body"),
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
          
            title: Text('Hex Squats', textScaleFactor: 1.2, style: TextStyle(color: Colors. black),),
             ),
              onPressed: (){
               Navigator.pushNamed(context, MyRoutes.hexSquat);
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
          
            title: Text('Deadlift', textScaleFactor: 1.2,style: TextStyle(color: Colors. black)),
             ),
              onPressed: (){
              
               Navigator.pushNamed(context, MyRoutes.deadlift);
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
                
               Navigator.pushNamed(context, MyRoutes.dumbbellLunges);
              
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
              
               Navigator.pushNamed(context, MyRoutes.legExtension);
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
          
            title: Text('Leg Curls', textScaleFactor: 1.2,  style: TextStyle(color: Colors. black),),
             ),
              onPressed: (){
              
               Navigator.pushNamed(context, MyRoutes.legCurls);
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
          
            title: Text('Calf Raises', textScaleFactor: 1.2,  style: TextStyle(color: Colors. black),),
             ),
              onPressed: (){
              
               Navigator.pushNamed(context, MyRoutes.calfRaises);
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
