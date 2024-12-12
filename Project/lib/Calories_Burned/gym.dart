import 'package:flutter/material.dart';
import 'package:gymnasium_simulator/utils/routes.dart';
class Gym extends StatelessWidget{

@override
Widget build(BuildContext context) {
  return Material(
  child: Scaffold(
    backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Conditioning Exercise"),
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
          title: Text('Calisthenics', textScaleFactor: 1.2),
            textColor: Colors.black,
             ),
              onPressed: (){
              Navigator.pushNamed(context, MyRoutes.calisthenics); 
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
          title: Text('Resistance training', textScaleFactor: 1.2),
            textColor: Colors.black,
             ),
              onPressed: (){
              Navigator.pushNamed(context, MyRoutes.resistanceTraining); 
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
