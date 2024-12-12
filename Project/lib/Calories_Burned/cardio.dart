import 'package:flutter/material.dart';
import 'package:gymnasium_simulator/utils/routes.dart';
class Cardio extends StatelessWidget{

@override
Widget build(BuildContext context) {
  return Material(
  child: Scaffold(
    backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Cardio"),
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
           title: Text('Walking', textScaleFactor: 1.2,),
            textColor: Colors.black,
             ),
              onPressed: (){
               Navigator.pushNamed(context, MyRoutes.walking); 
              }
        ),
       
        const SizedBox(height: 2.0, child: const DecoratedBox(
          decoration: const BoxDecoration(
          color: Colors.black
              ),
            ),
          ),

        ElevatedButton(
          style: TextButton.styleFrom(backgroundColor: Colors.white),
          child: const ListTile(
          title: Text('Running', textScaleFactor: 1.2),
            textColor: Colors.black,
             ),
              onPressed: (){
              Navigator.pushNamed(context, MyRoutes.running); 
              }
        ),

        const SizedBox(height: 2.0, child: const DecoratedBox(
          decoration: const BoxDecoration(
          color: Colors.black
              ),
            ),
          ),

        ElevatedButton(
          style: TextButton.styleFrom(backgroundColor: Colors.white),
          child: const ListTile(
          title: Text('Cycling', textScaleFactor: 1.2),
            textColor: Colors.black,
             ),
              onPressed: (){
               Navigator.pushNamed(context, MyRoutes.cycling); 
              }
        ),

        const SizedBox(height: 2.0, child: const DecoratedBox(
          decoration: const BoxDecoration(
          color: Colors.black
              ),
            ),
          ),

        ElevatedButton(
          style: TextButton.styleFrom(backgroundColor: Colors.white),
          child: const ListTile(
           title: Text('Rope skipping', textScaleFactor: 1.2),
            textColor: Colors.black,
             ),
              onPressed: (){
              Navigator.pushNamed(context, MyRoutes.ropeSkipping); 
              }
        ),

        const SizedBox(height: 2.0, child: const DecoratedBox(
          decoration: const BoxDecoration(
          color: Colors.black
              ),
            ),
          ),

        ElevatedButton(
          style: TextButton.styleFrom(backgroundColor: Colors.white),
          child: const ListTile(
          title: Text('Yoga', textScaleFactor: 1.2),
            textColor: Colors.black,
             ),
              onPressed: (){
              Navigator.pushNamed(context, MyRoutes.yoga); 
              }
        ),

        const SizedBox(height: 2.0, child: const DecoratedBox(
          decoration: const BoxDecoration(
          color: Colors.black
              ),
            ),
          ),

        ElevatedButton(
          style: TextButton.styleFrom(backgroundColor: Colors.white),
          child: const ListTile(
           title: Text('Dancing', textScaleFactor: 1.2),
            textColor: Colors.black,
             ),
              onPressed: (){
              Navigator.pushNamed(context, MyRoutes.dancing); 
              }
        ),

        const SizedBox(height: 2.0, child: const DecoratedBox(
          decoration: const BoxDecoration(
          color: Colors.black
              ),
            ),
          ),

        ElevatedButton(
          style: TextButton.styleFrom(backgroundColor: Colors.white),
          child: const ListTile(
          title: Text('Swimming', textScaleFactor: 1.2),
            textColor: Colors.black,
             ),
              onPressed: (){
              Navigator.pushNamed(context, MyRoutes.swimming); 
              }
        ),
        
        const SizedBox(height: 2.0, child: const DecoratedBox(
          decoration: const BoxDecoration(
          color: Colors.black
              ),
            ),),
        
      



       

          
          
          
     
      ]



    ),     
  )
);
}
}
