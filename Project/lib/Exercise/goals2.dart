import 'package:flutter/material.dart';
import 'package:gymnasium_simulator/utils/routes.dart';

class Goals2 extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: Text("Mesomorph"),
        backgroundColor: Colors.black,
     ),
     body: Center(
        child: Padding(
          padding: const EdgeInsets.all(70.0),
          child: Column(
              children: [
                Text(
                "What is your Goal",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                ),
              SizedBox(height: 20,),
                  ElevatedButton(
                    child: 
                     Text("Aesthetic"),
                     style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                        maximumSize: Size(200, 100)
                         ),
                     onPressed: (){
                       Navigator.pushNamed(context, MyRoutes.days2);
                     }, 
                  ),
                  ElevatedButton(
                    child: 
                     Text("Strength"),
                     style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                        maximumSize: Size(200, 100)
                         ),
                     onPressed: (){
                       
                      Navigator.pushNamed(context, MyRoutes.strength2);
                     },
                     
                  ),
                  ElevatedButton(
                    child: 
                     Text("Lose Body Fat"),
                     style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                        maximumSize: Size(200, 100)
                         ),
                     onPressed: (){
                       
                      Navigator.pushNamed(context, MyRoutes.loseFat);
                     },
                     
                  ),
                 
              ]
          )
        )
     )
  );

  }
}
